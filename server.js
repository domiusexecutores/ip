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
// sessions[id] = { id, createdAt, expiresAt, trackerWs, viewerWs, history: [], lastPosition }
const sessions = new Map();

app.use(express.static(path.join(__dirname, 'public')));
app.use(express.json());

// Limpa sessões expiradas a cada 5 minutos
setInterval(() => {
  const now = Date.now();
  for (const [id, session] of sessions.entries()) {
    if (now > session.expiresAt) {
      if (session.trackerWs) tryClose(session.trackerWs, 4001, 'session_expired');
      if (session.viewerWs) tryClose(session.viewerWs, 4001, 'session_expired');
      sessions.delete(id);
      console.log(`[GC] Sessão ${id} removida por expiração.`);
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

// REST: cria nova sessão
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
  console.log(`[SESSION] Criada: ${id}`);
  res.json({ sessionId: id, expiresIn: SESSION_TTL });
});

// REST: info de sessão
app.get('/api/session/:id', (req, res) => {
  const session = sessions.get(req.params.id);
  if (!session) return res.status(404).json({ error: 'Sessão não encontrada ou expirada.' });
  if (Date.now() > session.expiresAt) {
    sessions.delete(req.params.id);
    return res.status(410).json({ error: 'Sessão expirada.' });
  }
  res.json({
    id: session.id,
    createdAt: session.createdAt,
    expiresAt: session.expiresAt,
    trackerOnline: session.trackerOnline,
    historyCount: session.history.length,
    lastPosition: session.lastPosition,
  });
});

// WebSocket handler
wss.on('connection', (ws, req) => {
  ws.isAlive = true;
  ws.sessionId = null;
  ws.role = null;

  ws.on('pong', () => { ws.isAlive = true; });

  ws.on('message', (raw) => {
    let msg;
    try { msg = JSON.parse(raw); } catch { return; }

    // ----- JOIN -----
    if (msg.type === 'join') {
      const { sessionId, role } = msg; // role: 'tracker' | 'viewer'
      const session = sessions.get(sessionId);

      if (!session) {
        return broadcast(ws, { type: 'error', code: 'NOT_FOUND', message: 'Sessão não encontrada ou expirada.' });
      }
      if (Date.now() > session.expiresAt) {
        sessions.delete(sessionId);
        return broadcast(ws, { type: 'error', code: 'EXPIRED', message: 'Sessão expirada.' });
      }

      ws.sessionId = sessionId;
      ws.role = role;

      if (role === 'tracker') {
        if (session.trackerWs && session.trackerWs.readyState === WebSocket.OPEN) {
          // Reconexão: desconecta o antigo
          tryClose(session.trackerWs, 4000, 'reconnected');
        }
        session.trackerWs = ws;
        session.trackerOnline = true;
        broadcast(ws, { type: 'joined', role: 'tracker', sessionId, expiresAt: session.expiresAt });
        // Avisa viewer se estiver conectado
        broadcast(session.viewerWs, { type: 'tracker_online' });
        console.log(`[WS] Tracker conectou na sessão ${sessionId}`);
      } else if (role === 'viewer') {
        if (session.viewerWs && session.viewerWs.readyState === WebSocket.OPEN) {
          tryClose(session.viewerWs, 4000, 'reconnected');
        }
        session.viewerWs = ws;
        broadcast(ws, {
          type: 'joined',
          role: 'viewer',
          sessionId,
          expiresAt: session.expiresAt,
          trackerOnline: session.trackerOnline,
          history: session.history,
          lastPosition: session.lastPosition,
        });
        console.log(`[WS] Viewer conectou na sessão ${sessionId}`);
      }
      return;
    }

    // ----- LOCATION -----
    if (msg.type === 'location') {
      if (!ws.sessionId || ws.role !== 'tracker') return;
      const session = sessions.get(ws.sessionId);
      if (!session) return;

      const point = {
        lat: msg.lat,
        lng: msg.lng,
        accuracy: msg.accuracy,
        speed: msg.speed ?? null,
        heading: msg.heading ?? null,
        altitude: msg.altitude ?? null,
        battery: msg.battery ?? null,
        batteryCharging: msg.batteryCharging ?? null,
        timestamp: msg.timestamp || Date.now(),
      };

      session.history.push(point);
      // Limita histórico a 5000 pontos (~1h de atualizações)
      if (session.history.length > 5000) session.history.shift();
      session.lastPosition = point;

      // Repassa para o viewer
      broadcast(session.viewerWs, { type: 'location', ...point });
      return;
    }

    // ----- PING -----
    if (msg.type === 'ping') {
      broadcast(ws, { type: 'pong', ts: Date.now() });
      return;
    }
  });

  ws.on('close', () => {
    if (!ws.sessionId) return;
    const session = sessions.get(ws.sessionId);
    if (!session) return;

    if (ws.role === 'tracker') {
      session.trackerOnline = false;
      session.trackerWs = null;
      broadcast(session.viewerWs, { type: 'tracker_offline' });
      console.log(`[WS] Tracker desconectou da sessão ${ws.sessionId}`);
    } else if (ws.role === 'viewer') {
      session.viewerWs = null;
      console.log(`[WS] Viewer desconectou da sessão ${ws.sessionId}`);
    }
  });

  ws.on('error', (err) => {
    console.error('[WS] Erro:', err.message);
  });
});

// Heartbeat: detecta conexões mortas
setInterval(() => {
  wss.clients.forEach((ws) => {
    if (!ws.isAlive) { return ws.terminate(); }
    ws.isAlive = false;
    ws.ping();
  });
}, 15000);

server.listen(PORT, () => {
  console.log(`\n🌍 Tracker rodando em http://localhost:${PORT}\n`);
});
