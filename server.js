const express = require('express');
const http = require('http');
const WebSocket = require('ws');
const { v4: uuidv4 } = require('uuid');
const path = require('path');

const app = express();
const server = http.createServer(app);
const wss = new WebSocket.Server({ server });

const PORT = process.env.PORT || 3000;
const SESSION_TTL = 60 * 60 * 1000; // 1 hora

// Memória de sessões
const sessions = new Map();

// SERVIR ARQUIVOS ESTÁTICOS
app.use(express.static(path.join(__dirname, 'public')));
app.use(express.json());

// 🔥 CORREÇÃO PRINCIPAL (resolve "Cannot GET /")
app.get('/', (req, res) => {
  res.sendFile(path.join(__dirname, 'public', 'index.html'));
});

// Limpa sessões expiradas
setInterval(() => {
  const now = Date.now();
  for (const [id, session] of sessions.entries()) {
    if (now > session.expiresAt) {
      if (session.trackerWs) tryClose(session.trackerWs, 4001, 'session_expired');
      if (session.viewerWs) tryClose(session.viewerWs, 4001, 'session_expired');
      sessions.delete(id);
      console.log(`[GC] Sessão ${id} removida.`);
    }
  }
}, 5 * 60 * 1000);

function tryClose(ws, code, reason) {
  try { ws.close(code, reason); } catch (_) {}
}

function broadcast(ws, data) {
  if (ws && ws.readyState === WebSocket.OPEN) {
    ws.send(JSON.stringify(data));
  }
}

// Criar sessão
app.post('/api/session', (req, res) => {
  const id = uuidv4();
  const now = Date.now();

  sessions.set(id, {
    id,
    createdAt: now,
    expiresAt: now + SESSION_TTL,
    trackerWs: null,
    viewerWs: null,
    history: [],
    lastPosition: null,
    trackerOnline: false,
  });

  res.json({ sessionId: id, expiresIn: SESSION_TTL });
});

// Info da sessão
app.get('/api/session/:id', (req, res) => {
  const session = sessions.get(req.params.id);

  if (!session) return res.status(404).json({ error: 'Sessão não encontrada.' });

  if (Date.now() > session.expiresAt) {
    sessions.delete(req.params.id);
    return res.status(410).json({ error: 'Sessão expirada.' });
  }

  res.json({
    id: session.id,
    trackerOnline: session.trackerOnline,
    historyCount: session.history.length,
    lastPosition: session.lastPosition,
  });
});

// WebSocket
wss.on('connection', (ws) => {
  ws.isAlive = true;
  ws.sessionId = null;
  ws.role = null;

  ws.on('pong', () => ws.isAlive = true);

  ws.on('message', (raw) => {
    let msg;
    try { msg = JSON.parse(raw); } catch { return; }

    // JOIN
    if (msg.type === 'join') {
      const { sessionId, role } = msg;
      const session = sessions.get(sessionId);

      if (!session) {
        return broadcast(ws, { type: 'error', message: 'Sessão inválida' });
      }

      ws.sessionId = sessionId;
      ws.role = role;

      if (role === 'tracker') {
        session.trackerWs = ws;
        session.trackerOnline = true;
        broadcast(session.viewerWs, { type: 'tracker_online' });
      }

      if (role === 'viewer') {
        session.viewerWs = ws;
        broadcast(ws, {
          type: 'init',
          history: session.history,
          lastPosition: session.lastPosition,
        });
      }

      return;
    }

    // LOCATION
    if (msg.type === 'location') {
      const session = sessions.get(ws.sessionId);
      if (!session) return;

      const point = {
        lat: msg.lat,
        lng: msg.lng,
        accuracy: msg.accuracy,
        speed: msg.speed,
        battery: msg.battery,
        timestamp: Date.now(),
      };

      session.history.push(point);
      session.lastPosition = point;

      broadcast(session.viewerWs, { type: 'location', ...point });
    }
  });

  ws.on('close', () => {
    const session = sessions.get(ws.sessionId);
    if (!session) return;

    if (ws.role === 'tracker') {
      session.trackerOnline = false;
      session.trackerWs = null;
      broadcast(session.viewerWs, { type: 'tracker_offline' });
    }

    if (ws.role === 'viewer') {
      session.viewerWs = null;
    }
  });
});

// Heartbeat
setInterval(() => {
  wss.clients.forEach((ws) => {
    if (!ws.isAlive) return ws.terminate();
    ws.isAlive = false;
    ws.ping();
  });
}, 15000);

// START SERVER
server.listen(PORT, () => {
  console.log(`🌍 Rodando na porta ${PORT}`);
});
