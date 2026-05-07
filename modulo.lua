function CheckQuest()
	MyLevel = (game:GetService("Players")).LocalPlayer.Data.Level.Value;
	if World1 then
		if MyLevel >= 1 and MyLevel <= 9 then
			Mon = "Bandit";
			LevelQuest = 1;
			NameQuest = "BanditQuest1";
			NameMon = "Bandit";
			CFrameQuest = CFrame.new(1059.37195, 15.4495068, 1550.4231, .939700544, 0, -0.341998369, 0, 1, 0, .341998369, 0, .939700544);
			CFrameMon = CFrame.new(1045.9626464844, 27.002508163452, 1560.8203125);
		elseif MyLevel >= 10 and MyLevel <= 14 then
			Mon = "Monkey";
			LevelQuest = 1;
			NameQuest = "JungleQuest";
			NameMon = "Monkey";
			CFrameQuest = CFrame.new(-1598.08911, 35.5501175, 153.377838, 0, 0, 1, 0, 1, 0, -1, 0, 0);
			CFrameMon = CFrame.new(-1448.5180664062, 67.853012084961, 11.465796470642);
		elseif MyLevel >= 15 and MyLevel <= 29 then
			Mon = "Gorilla";
			LevelQuest = 2;
			NameQuest = "JungleQuest";
			NameMon = "Gorilla";
			CFrameQuest = CFrame.new(-1598.08911, 35.5501175, 153.377838, 0, 0, 1, 0, 1, 0, -1, 0, 0);
			CFrameMon = CFrame.new(-1129.8836669922, 40.46354675293, -525.42370605469);
		elseif MyLevel >= 30 and MyLevel <= 39 then
			Mon = "Pirate";
			LevelQuest = 1;
			NameQuest = "BuggyQuest1";
			NameMon = "Pirate";
			CFrameQuest = CFrame.new(-1141.07483, 4.10001802, 3831.5498, .965929627, 0, -0.258804798, 0, 1, 0, .258804798, 0, .965929627);
			CFrameMon = CFrame.new(-1103.5134277344, 13.752052307129, 3896.0910644531);
		elseif MyLevel >= 40 and MyLevel <= 59 then
			Mon = "Brute";
			LevelQuest = 2;
			NameQuest = "BuggyQuest1";
			NameMon = "Brute";
			CFrameQuest = CFrame.new(-1141.07483, 4.10001802, 3831.5498, .965929627, 0, -0.258804798, 0, 1, 0, .258804798, 0, .965929627);
			CFrameMon = CFrame.new(-1140.0837402344, 14.809885025024, 4322.9213867188);
		elseif MyLevel >= 60 and MyLevel <= 74 then
			Mon = "Desert Bandit";
			LevelQuest = 1;
			NameQuest = "DesertQuest";
			NameMon = "Desert Bandit";
			CFrameQuest = CFrame.new(894.488647, 5.14000702, 4392.43359, .819155693, 0, -0.573571265, 0, 1, 0, .573571265, 0, .819155693);
			CFrameMon = CFrame.new(924.7998046875, 6.4486746788025, 4481.5859375);
		elseif MyLevel >= 75 and MyLevel <= 89 then
			Mon = "Desert Officer";
			LevelQuest = 2;
			NameQuest = "DesertQuest";
			NameMon = "Desert Officer";
			CFrameQuest = CFrame.new(894.488647, 5.14000702, 4392.43359, .819155693, 0, -0.573571265, 0, 1, 0, .573571265, 0, .819155693);
			CFrameMon = CFrame.new(1608.2822265625, 8.6142244338989, 4371.0073242188);
		elseif MyLevel >= 90 and MyLevel <= 99 then
			Mon = "Snow Bandit";
			LevelQuest = 1;
			NameQuest = "SnowQuest";
			NameMon = "Snow Bandit";
			CFrameQuest = CFrame.new(1389.74451, 88.1519318, -1298.90796, -0.342042685, 0, .939684391, 0, 1, 0, -0.939684391, 0, -0.342042685);
			CFrameMon = CFrame.new(1354.3479003906, 87.272773742676, -1393.9465332031);
		elseif MyLevel >= 100 and MyLevel <= 119 then
			Mon = "Snowman";
			LevelQuest = 2;
			NameQuest = "SnowQuest";
			NameMon = "Snowman";
			CFrameQuest = CFrame.new(1389.74451, 88.1519318, -1298.90796, -0.342042685, 0, .939684391, 0, 1, 0, -0.939684391, 0, -0.342042685);
			CFrameMon = CFrame.new(1201.6412353516, 144.57958984375, -1550.0670166016);
		elseif MyLevel >= 120 and MyLevel <= 149 then
			Mon = "Chief Petty Officer";
			LevelQuest = 1;
			NameQuest = "MarineQuest2";
			NameMon = "Chief Petty Officer";
			CFrameQuest = CFrame.new(-5039.58643, 27.3500385, 4324.68018, 0, 0, -1, 0, 1, 0, 1, 0, 0);
			CFrameMon = CFrame.new(-4881.2309570312, 22.652044296265, 4273.7524414062);
		elseif MyLevel >= 150 and MyLevel <= 174 then
			Mon = "Sky Bandit";
			LevelQuest = 1;
			NameQuest = "SkyQuest";
			NameMon = "Sky Bandit";
			CFrameQuest = CFrame.new(-4839.53027, 716.368591, -2619.44165, .866007268, 0, .500031412, 0, 1, 0, -0.500031412, 0, .866007268);
			CFrameMon = CFrame.new(-4953.20703125, 295.74420166016, -2899.2290039062);
		elseif MyLevel >= 175 and MyLevel <= 189 then
			Mon = "Dark Master";
			LevelQuest = 2;
			NameQuest = "SkyQuest";
			NameMon = "Dark Master";
			CFrameQuest = CFrame.new(-4839.53027, 716.368591, -2619.44165, .866007268, 0, .500031412, 0, 1, 0, -0.500031412, 0, .866007268);
			CFrameMon = CFrame.new(-5259.8447265625, 391.39767456055, -2229.0354003906);
		elseif MyLevel >= 190 and MyLevel <= 209 then
			Mon = "Prisoner";
			LevelQuest = 1;
			NameQuest = "PrisonerQuest";
			NameMon = "Prisoner";
			CFrameQuest = CFrame.new(5308.93115, 1.65517521, 475.120514, -0.0894274712, -5.00292918e-09, -0.995993316, 1.60817859e-09, 1, -5.16744869e-09, .995993316, -2.06384709e-09, -0.0894274712);
			CFrameMon = CFrame.new(5098.9736328125, -0.3204058110714, 474.23733520508);
		elseif MyLevel >= 210 and MyLevel <= 249 then
			Mon = "Dangerous Prisoner";
			LevelQuest = 2;
			NameQuest = "PrisonerQuest";
			NameMon = "Dangerous Prisoner";
			CFrameQuest = CFrame.new(5308.93115, 1.65517521, 475.120514, -0.0894274712, -5.00292918e-09, -0.995993316, 1.60817859e-09, 1, -5.16744869e-09, .995993316, -2.06384709e-09, -0.0894274712);
			CFrameMon = CFrame.new(5654.5634765625, 15.633401870728, 866.29919433594);
		elseif MyLevel >= 250 and MyLevel <= 274 then
			Mon = "Toga Warrior";
			LevelQuest = 1;
			NameQuest = "ColosseumQuest";
			NameMon = "Toga Warrior";
			CFrameQuest = CFrame.new(-1580.04663, 6.35000277, -2986.47534, -0.515037298, 0, -0.857167721, 0, 1, 0, .857167721, 0, -0.515037298);
			CFrameMon = CFrame.new(-1820.21484375, 51.683856964111, -2740.6650390625);
		elseif MyLevel >= 275 and MyLevel <= 299 then
			Mon = "Gladiator";
			LevelQuest = 2;
			NameQuest = "ColosseumQuest";
			NameMon = "Gladiator";
			CFrameQuest = CFrame.new(-1580.04663, 6.35000277, -2986.47534, -0.515037298, 0, -0.857167721, 0, 1, 0, .857167721, 0, -0.515037298);
			CFrameMon = CFrame.new(-1292.8381347656, 56.380882263184, -3339.0314941406);
		elseif MyLevel >= 300 and MyLevel <= 324 then
			Mon = "Military Soldier";
			LevelQuest = 1;
			NameQuest = "MagmaQuest";
			NameMon = "Military Soldier";
			CFrameQuest = CFrame.new(-5313.37012, 10.9500084, 8515.29395, -0.499959469, 0, .866048813, 0, 1, 0, -0.866048813, 0, -0.499959469);
			CFrameMon = CFrame.new(-5411.1645507812, 11.081554412842, 8454.29296875);
		elseif MyLevel >= 325 and MyLevel <= 374 then
			Mon = "Military Spy";
			LevelQuest = 2;
			NameQuest = "MagmaQuest";
			NameMon = "Military Spy";
			CFrameQuest = CFrame.new(-5313.37012, 10.9500084, 8515.29395, -0.499959469, 0, .866048813, 0, 1, 0, -0.866048813, 0, -0.499959469);
			CFrameMon = CFrame.new(-5802.8681640625, 86.262413024902, 8828.859375);
		elseif MyLevel >= 375 and MyLevel <= 399 then
			Mon = "Fishman Warrior";
			LevelQuest = 1;
			NameQuest = "FishmanQuest";
			NameMon = "Fishman Warrior";
			CFrameQuest = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734);
			CFrameMon = CFrame.new(60878.30078125, 18.482830047607, 1543.7574462891);
			if (getgenv()).AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
				(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(61163.8515625, 11.6796875, 1819.7841796875));
			end;
		elseif MyLevel >= 400 and MyLevel <= 449 then
			Mon = "Fishman Commando";
			LevelQuest = 2;
			NameQuest = "FishmanQuest";
			NameMon = "Fishman Commando";
			CFrameQuest = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734);
			CFrameMon = CFrame.new(61922.6328125, 18.482830047607, 1493.9343261719);
			if (getgenv()).AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
				(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(61163.8515625, 11.6796875, 1819.7841796875));
			end;
		elseif MyLevel >= 450 and MyLevel <= 474 then
			Mon = "God\'s Guard";
			LevelQuest = 1;
			NameQuest = "SkyExp1Quest";
			NameMon = "God\'s Guard";
			CFrameQuest = CFrame.new(-4721.88867, 843.874695, -1949.96643, .996191859, 0, -0.0871884301, 0, 1, 0, .0871884301, 0, .996191859);
			CFrameMon = CFrame.new(-4710.04296875, 845.27697753906, -1927.3079833984);
			if (getgenv()).AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
				(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-4607.82275, 872.54248, -1667.55688));
			end;
		elseif MyLevel >= 475 and MyLevel <= 524 then
			Mon = "Shanda";
			LevelQuest = 2;
			NameQuest = "SkyExp1Quest";
			NameMon = "Shanda";
			CFrameQuest = CFrame.new(-7859.09814, 5544.19043, -381.476196, -0.422592998, 0, .906319618, 0, 1, 0, -0.906319618, 0, -0.422592998);
			CFrameMon = CFrame.new(-7678.4897460938, 5566.4038085938, -497.21560668945);
			if (getgenv()).AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
				(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047));
			end;
		elseif MyLevel >= 525 and MyLevel <= 549 then
			Mon = "Royal Squad";
			LevelQuest = 1;
			NameQuest = "SkyExp2Quest";
			NameMon = "Royal Squad";
			CFrameQuest = CFrame.new(-7906.81592, 5634.6626, -1411.99194, 0, 0, -1, 0, 1, 0, 1, 0, 0);
			CFrameMon = CFrame.new(-7624.2524414062, 5658.1333007812, -1467.3542480469);
		elseif MyLevel >= 550 and MyLevel <= 624 then
			Mon = "Royal Soldier";
			LevelQuest = 2;
			NameQuest = "SkyExp2Quest";
			NameMon = "Royal Soldier";
			CFrameQuest = CFrame.new(-7906.81592, 5634.6626, -1411.99194, 0, 0, -1, 0, 1, 0, 1, 0, 0);
			CFrameMon = CFrame.new(-7836.7534179688, 5645.6640625, -1790.6236572266);
		elseif MyLevel >= 625 and MyLevel <= 649 then
			Mon = "Galley Pirate";
			LevelQuest = 1;
			NameQuest = "FountainQuest";
			NameMon = "Galley Pirate";
			CFrameQuest = CFrame.new(5259.81982, 37.3500175, 4050.0293, .087131381, 0, .996196866, 0, 1, 0, -0.996196866, 0, .087131381);
			CFrameMon = CFrame.new(5551.0219726562, 78.901351928711, 3930.4128417969);
		elseif MyLevel >= 650 then
			Mon = "Galley Captain";
			LevelQuest = 2;
			NameQuest = "FountainQuest";
			NameMon = "Galley Captain";
			CFrameQuest = CFrame.new(5259.81982, 37.3500175, 4050.0293, .087131381, 0, .996196866, 0, 1, 0, -0.996196866, 0, .087131381);
			CFrameMon = CFrame.new(5441.9516601562, 42.502059936523, 4950.09375);
		end;
	elseif World2 then
		if MyLevel >= 700 and MyLevel <= 724 then
			Mon = "Raider";
			LevelQuest = 1;
			NameQuest = "Area1Quest";
			NameMon = "Raider";
			CFrameQuest = CFrame.new(-429.543518, 71.7699966, 1836.18188, -0.22495985, 0, -0.974368095, 0, 1, 0, .974368095, 0, -0.22495985);
			CFrameMon = CFrame.new(-728.32672119141, 52.779319763184, 2345.7705078125);
		elseif MyLevel >= 725 and MyLevel <= 774 then
			Mon = "Mercenary";
			LevelQuest = 2;
			NameQuest = "Area1Quest";
			NameMon = "Mercenary";
			CFrameQuest = CFrame.new(-429.543518, 71.7699966, 1836.18188, -0.22495985, 0, -0.974368095, 0, 1, 0, .974368095, 0, -0.22495985);
			CFrameMon = CFrame.new(-1004.3244018555, 80.158866882324, 1424.6193847656);
		elseif MyLevel >= 775 and MyLevel <= 799 then
			Mon = "Swan Pirate";
			LevelQuest = 1;
			NameQuest = "Area2Quest";
			NameMon = "Swan Pirate";
			CFrameQuest = CFrame.new(638.43811, 71.769989, 918.282898, .139203906, 0, .99026376, 0, 1, 0, -0.99026376, 0, .139203906);
			CFrameMon = CFrame.new(1068.6643066406, 137.61428833008, 1322.1060791016);
		elseif MyLevel >= 800 and MyLevel <= 874 then
			Mon = "Factory Staff";
			NameQuest = "Area2Quest";
			LevelQuest = 2;
			NameMon = "Factory Staff";
			CFrameQuest = CFrame.new(632.698608, 73.1055908, 918.666321, -0.0319722369, 8.96074881e-10, -0.999488771, 1.36326533e-10, 1, 8.92172336e-10, .999488771, -1.07732087e-10, -0.0319722369);
			CFrameMon = CFrame.new(73.078674316406, 81.863441467285, -27.470672607422);
		elseif MyLevel >= 875 and MyLevel <= 899 then
			Mon = "Marine Lieutenant";
			LevelQuest = 1;
			NameQuest = "MarineQuest3";
			NameMon = "Marine Lieutenant";
			CFrameQuest = CFrame.new(-2440.79639, 71.7140732, -3216.06812, .866007268, 0, .500031412, 0, 1, 0, -0.500031412, 0, .866007268);
			CFrameMon = CFrame.new(-2821.3723144531, 75.897277832031, -3070.0891113281);
		elseif MyLevel >= 900 and MyLevel <= 949 then
			Mon = "Marine Captain";
			LevelQuest = 2;
			NameQuest = "MarineQuest3";
			NameMon = "Marine Captain";
			CFrameQuest = CFrame.new(-2440.79639, 71.7140732, -3216.06812, .866007268, 0, .500031412, 0, 1, 0, -0.500031412, 0, .866007268);
			CFrameMon = CFrame.new(-1861.2310791016, 80.176582336426, -3254.6975097656);
		elseif MyLevel >= 950 and MyLevel <= 974 then
			Mon = "Zombie";
			LevelQuest = 1;
			NameQuest = "ZombieQuest";
			NameMon = "Zombie";
			CFrameQuest = CFrame.new(-5497.06152, 47.5923004, -795.237061, -0.29242146, 0, -0.95628953, 0, 1, 0, .95628953, 0, -0.29242146);
			CFrameMon = CFrame.new(-5657.7768554688, 78.969734191895, -928.68701171875);
		elseif MyLevel >= 975 and MyLevel <= 999 then
			Mon = "Vampire";
			LevelQuest = 2;
			NameQuest = "ZombieQuest";
			NameMon = "Vampire";
			CFrameQuest = CFrame.new(-5497.06152, 47.5923004, -795.237061, -0.29242146, 0, -0.95628953, 0, 1, 0, .95628953, 0, -0.29242146);
			CFrameMon = CFrame.new(-6037.66796875, 32.184638977051, -1340.6597900391);
		elseif MyLevel >= 1000 and MyLevel <= 1049 then
			Mon = "Snow Trooper";
			LevelQuest = 1;
			NameQuest = "SnowMountainQuest";
			NameMon = "Snow Trooper";
			CFrameQuest = CFrame.new(609.858826, 400.119904, -5372.25928, -0.374604106, 0, .92718488, 0, 1, 0, -0.92718488, 0, -0.374604106);
			CFrameMon = CFrame.new(549.14733886719, 427.38705444336, -5563.6987304688);
		elseif MyLevel >= 1050 and MyLevel <= 1099 then
			Mon = "Winter Warrior";
			LevelQuest = 2;
			NameQuest = "SnowMountainQuest";
			NameMon = "Winter Warrior";
			CFrameQuest = CFrame.new(609.858826, 400.119904, -5372.25928, -0.374604106, 0, .92718488, 0, 1, 0, -0.92718488, 0, -0.374604106);
			CFrameMon = CFrame.new(1142.7451171875, 475.63980102539, -5199.4165039062);
		elseif MyLevel >= 1100 and MyLevel <= 1124 then
			Mon = "Lab Subordinate";
			LevelQuest = 1;
			NameQuest = "IceSideQuest";
			NameMon = "Lab Subordinate";
			CFrameQuest = CFrame.new(-6064.06885, 15.2422857, -4902.97852, .453972578, 0, -0.891015649, 0, 1, 0, .891015649, 0, .453972578);
			CFrameMon = CFrame.new(-5707.4716796875, 15.951709747314, -4513.3920898438);
		elseif MyLevel >= 1125 and MyLevel <= 1174 then
			Mon = "Horned Warrior";
			LevelQuest = 2;
			NameQuest = "IceSideQuest";
			NameMon = "Horned Warrior";
			CFrameQuest = CFrame.new(-6064.06885, 15.2422857, -4902.97852, .453972578, 0, -0.891015649, 0, 1, 0, .891015649, 0, .453972578);
			CFrameMon = CFrame.new(-6341.3666992188, 15.951770782471, -5723.162109375);
		elseif MyLevel >= 1175 and MyLevel <= 1199 then
			Mon = "Magma Ninja";
			LevelQuest = 1;
			NameQuest = "FireSideQuest";
			NameMon = "Magma Ninja";
			CFrameQuest = CFrame.new(-5428.03174, 15.0622921, -5299.43457, -0.882952213, 0, .469463557, 0, 1, 0, -0.469463557, 0, -0.882952213);
			CFrameMon = CFrame.new(-5449.6728515625, 76.658744812012, -5808.2006835938);
		elseif MyLevel >= 1200 and MyLevel <= 1249 then
			Mon = "Lava Pirate";
			LevelQuest = 2;
			NameQuest = "FireSideQuest";
			NameMon = "Lava Pirate";
			CFrameQuest = CFrame.new(-5428.03174, 15.0622921, -5299.43457, -0.882952213, 0, .469463557, 0, 1, 0, -0.469463557, 0, -0.882952213);
			CFrameMon = CFrame.new(-5213.3315429688, 49.737880706787, -4701.451171875);
		elseif MyLevel >= 1250 and MyLevel <= 1274 then
			Mon = "Ship Deckhand";
			LevelQuest = 1;
			NameQuest = "ShipQuest1";
			NameMon = "Ship Deckhand";
			CFrameQuest = CFrame.new(1037.80127, 125.092171, 32911.6016);
			CFrameMon = CFrame.new(1212.0111083984, 150.79205322266, 33059.24609375);
			if (getgenv()).AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
				(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(923.21252441406, 126.9760055542, 32852.83203125));
			end;
		elseif MyLevel >= 1275 and MyLevel <= 1299 then
			Mon = "Ship Engineer";
			LevelQuest = 2;
			NameQuest = "ShipQuest1";
			NameMon = "Ship Engineer";
			CFrameQuest = CFrame.new(1037.80127, 125.092171, 32911.6016);
			CFrameMon = CFrame.new(919.47863769531, 43.544013977051, 32779.96875);
			if (getgenv()).AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
				(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(923.21252441406, 126.9760055542, 32852.83203125));
			end;
		elseif MyLevel >= 1300 and MyLevel <= 1324 then
			Mon = "Ship Steward";
			LevelQuest = 1;
			NameQuest = "ShipQuest2";
			NameMon = "Ship Steward";
			CFrameQuest = CFrame.new(968.80957, 125.092171, 33244.125);
			CFrameMon = CFrame.new(919.43853759766, 129.55599975586, 33436.03515625);
			if (getgenv()).AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
				(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(923.21252441406, 126.9760055542, 32852.83203125));
			end;
		elseif MyLevel >= 1325 and MyLevel <= 1349 then
			Mon = "Ship Officer";
			LevelQuest = 2;
			NameQuest = "ShipQuest2";
			NameMon = "Ship Officer";
			CFrameQuest = CFrame.new(968.80957, 125.092171, 33244.125);
			CFrameMon = CFrame.new(1036.0179443359, 181.4390411377, 33315.7265625);
			if (getgenv()).AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
				(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(923.21252441406, 126.9760055542, 32852.83203125));
			end;
		elseif MyLevel >= 1350 and MyLevel <= 1374 then
			Mon = "Arctic Warrior";
			LevelQuest = 1;
			NameQuest = "FrostQuest";
			NameMon = "Arctic Warrior";
			CFrameQuest = CFrame.new(5667.6582, 26.7997818, -6486.08984, -0.933587909, 0, -0.358349502, 0, 1, 0, .358349502, 0, -0.933587909);
			CFrameMon = CFrame.new(5966.24609375, 62.970020294189, -6179.3828125);
			if (getgenv()).AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
				(game:GetService("ReplicatedStorage")).Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-6508.5581054688, 5000.0349960327, -132.83953857422));
			end;
		elseif MyLevel >= 1375 and MyLevel <= 1424 then
			Mon = "Snow Lurker";
			LevelQuest = 2;
			NameQuest = "FrostQuest";
			NameMon = "Snow Lurker";
			CFrameQuest = CFrame.new(5667.6582, 26.7997818, -6486.08984, -0.933587909, 0, -0.358349502, 0, 1, 0, .358349502, 0, -0.933587909);
			CFrameMon = CFrame.new(5407.0737304688, 69.194374084473, -6880.8803710938);
		elseif MyLevel >= 1425 and MyLevel <= 1449 then
			Mon = "Sea Soldier";
			LevelQuest = 1;
			NameQuest = "ForgottenQuest";
			NameMon = "Sea Soldier";
			CFrameQuest = CFrame.new(-3054.44458, 235.544281, -10142.8193, .990270376, 0, -0.13915664, 0, 1, 0, .13915664, 0, .990270376);
			CFrameMon = CFrame.new(-3028.2236328125, 64.674514770508, -9775.4267578125);
		elseif MyLevel >= 1450 then
			Mon = "Water Fighter";
			LevelQuest = 2;
			NameQuest = "ForgottenQuest";
			NameMon = "Water Fighter";
			CFrameQuest = CFrame.new(-3054, 240, -10146);
			CFrameMon = CFrame.new(-3291, 252, -10501);
		end;
	elseif World3 then
		if MyLevel >= 1500 and MyLevel <= 1524 then
			Mon = "Pirate Millionaire";
			LevelQuest = 1;
			NameQuest = "PiratePortQuest";
			NameMon = "Pirate Millionaire";
			CFrameQuest = CFrame.new(-290.074677, 42.9034653, 5581.58984, .965929627, 0, -0.258804798, 0, 1, 0, .258804798, 0, .965929627);
			CFrameMon = CFrame.new(-245.99638366699, 47.30615234375, 5584.1005859375);
		elseif MyLevel >= 1525 and MyLevel <= 1574 then
			Mon = "Pistol Billionaire";
			LevelQuest = 2;
			NameQuest = "PiratePortQuest";
			NameMon = "Pistol Billionaire";
			CFrameQuest = CFrame.new(-290.074677, 42.9034653, 5581.58984, .965929627, 0, -0.258804798, 0, 1, 0, .258804798, 0, .965929627);
			CFrameMon = CFrame.new(-187.33015441895, 86.239875793457, 6013.513671875);
		elseif MyLevel >= 1575 and MyLevel <= 1599 then
			Mon = "Dragon Crew Warrior";
			LevelQuest = 1;
			NameQuest = "DragonCrewQuest";
			NameMon = "Dragon Crew Warrior";
			CFrameQuest = CFrame.new(6738.9614257812, 127.81645965576, -713.51147460938);
			CFrameMon = CFrame.new(6920.7143554688, 56.1559715271, -942.50445556641);
		elseif MyLevel >= 1600 and MyLevel <= 1624 then
			Mon = "Dragon Crew Archer";
			NameQuest = "DragonCrewQuest";
			LevelQuest = 2;
			NameMon = "Dragon Crew Archer";
			CFrameQuest = CFrame.new(6738.9614257812, 127.81645965576, -713.51147460938);
			CFrameMon = CFrame.new(6817.9125976562, 484.80444335938, 513.41412353516);
		elseif MyLevel >= 1625 and MyLevel <= 1649 then
			Mon = "Hydra Enforcer";
			NameQuest = "VenomCrewQuest";
			LevelQuest = 1;
			NameMon = "Hydra Enforcer";
			CFrameQuest = CFrame.new(5213.8740234375, 1004.5042724609, 758.69445800781);
			CFrameMon = CFrame.new(4584.6928710938, 1002.6435546875, 705.7958984375);
		elseif MyLevel >= 1650 and MyLevel <= 1699 then
			Mon = "Venomous Assailant";
			NameQuest = "VenomCrewQuest";
			LevelQuest = 2;
			NameMon = "Venomous Assailant";
			CFrameQuest = CFrame.new(5213.8740234375, 1004.5042724609, 758.69445800781);
			CFrameMon = CFrame.new(4638.7856445312, 1078.9409179688, 881.80023193359);
		elseif MyLevel >= 1700 and MyLevel <= 1724 then
			Mon = "Marine Commodore";
			LevelQuest = 1;
			NameQuest = "MarineTreeIsland";
			NameMon = "Marine Commodore";
			CFrameQuest = CFrame.new(2180.54126, 27.8156815, -6741.5498, -0.965929747, 0, .258804798, 0, 1, 0, -0.258804798, 0, -0.965929747);
			CFrameMon = CFrame.new(2286.0078125, 73.133918762207, -7159.8090820312);
		elseif MyLevel >= 1725 and MyLevel <= 1774 then
			Mon = "Marine Rear Admiral";
			NameMon = "Marine Rear Admiral";
			NameQuest = "MarineTreeIsland";
			LevelQuest = 2;
			CFrameQuest = CFrame.new(2179.98828125, 28.731239318848, -6740.0551757813);
			CFrameMon = CFrame.new(3656.7736816406, 160.52406311035, -7001.5986328125);
		elseif MyLevel >= 1775 and MyLevel <= 1799 then
			Mon = "Fishman Raider";
			LevelQuest = 1;
			NameQuest = "DeepForestIsland3";
			NameMon = "Fishman Raider";
			CFrameQuest = CFrame.new(-10581.6563, 330.872955, -8761.18652, -0.882952213, 0, .469463557, 0, 1, 0, -0.469463557, 0, -0.882952213);
			CFrameMon = CFrame.new(-10407.526367188, 331.76263427734, -8368.5166015625);
		elseif MyLevel >= 1800 and MyLevel <= 1824 then
			Mon = "Fishman Captain";
			LevelQuest = 2;
			NameQuest = "DeepForestIsland3";
			NameMon = "Fishman Captain";
			CFrameQuest = CFrame.new(-10581.6563, 330.872955, -8761.18652, -0.882952213, 0, .469463557, 0, 1, 0, -0.469463557, 0, -0.882952213);
			CFrameMon = CFrame.new(-10994.701171875, 352.38140869141, -9002.1103515625);
		elseif MyLevel >= 1825 and MyLevel <= 1849 then
			Mon = "Forest Pirate";
			LevelQuest = 1;
			NameQuest = "DeepForestIsland";
			NameMon = "Forest Pirate";
			CFrameQuest = CFrame.new(-13234.04, 331.488495, -7625.40137, .707134247, 0, -0.707079291, 0, 1, 0, .707079291, 0, .707134247);
			CFrameMon = CFrame.new(-13274.478515625, 332.37814331055, -7769.5805664062);
		elseif MyLevel >= 1850 and MyLevel <= 1899 then
			Mon = "Mythological Pirate";
			LevelQuest = 2;
			NameQuest = "DeepForestIsland";
			NameMon = "Mythological Pirate";
			CFrameQuest = CFrame.new(-13234.04, 331.488495, -7625.40137, .707134247, 0, -0.707079291, 0, 1, 0, .707079291, 0, .707134247);
			CFrameMon = CFrame.new(-13680.607421875, 501.08154296875, -6991.189453125);
		elseif MyLevel >= 1900 and MyLevel <= 1924 then
			Mon = "Jungle Pirate";
			LevelQuest = 1;
			NameQuest = "DeepForestIsland2";
			NameMon = "Jungle Pirate";
			CFrameQuest = CFrame.new(-12680.3818, 389.971039, -9902.01953, -0.0871315002, 0, .996196866, 0, 1, 0, -0.996196866, 0, -0.0871315002);
			CFrameMon = CFrame.new(-12256.16015625, 331.73828125, -10485.836914062);
		elseif MyLevel >= 1925 and MyLevel <= 1974 then
			Mon = "Musketeer Pirate";
			LevelQuest = 2;
			NameQuest = "DeepForestIsland2";
			NameMon = "Musketeer Pirate";
			CFrameQuest = CFrame.new(-12680.3818, 389.971039, -9902.01953, -0.0871315002, 0, .996196866, 0, 1, 0, -0.996196866, 0, -0.0871315002);
			CFrameMon = CFrame.new(-13457.904296875, 391.54565429688, -9859.177734375);
		elseif MyLevel >= 1975 and MyLevel <= 1999 then
			Mon = "Reborn Skeleton";
			LevelQuest = 1;
			NameQuest = "HauntedQuest1";
			NameMon = "Reborn Skeleton";
			CFrameQuest = CFrame.new(-9479.2168, 141.215088, 5566.09277, 0, 0, 1, 0, 1, 0, -1, 0, 0);
			CFrameMon = CFrame.new(-8763.7236328125, 165.72299194336, 6159.8618164062);
		elseif MyLevel >= 2000 and MyLevel <= 2024 then
			Mon = "Living Zombie";
			LevelQuest = 2;
			NameQuest = "HauntedQuest1";
			NameMon = "Living Zombie";
			CFrameQuest = CFrame.new(-9479.2168, 141.215088, 5566.09277, 0, 0, 1, 0, 1, 0, -1, 0, 0);
			CFrameMon = CFrame.new(-10144.131835938, 138.6266784668, 5838.0888671875);
		elseif MyLevel >= 2025 and MyLevel <= 2049 then
			Mon = "Demonic Soul";
			LevelQuest = 1;
			NameQuest = "HauntedQuest2";
			NameMon = "Demonic Soul";
			CFrameQuest = CFrame.new(-9516.99316, 172.017181, 6078.46533, 0, 0, -1, 0, 1, 0, 1, 0, 0);
			CFrameMon = CFrame.new(-9505.8720703125, 172.10482788086, 6158.9931640625);
		elseif MyLevel >= 2050 and MyLevel <= 2074 then
			Mon = "Posessed Mummy";
			LevelQuest = 2;
			NameQuest = "HauntedQuest2";
			NameMon = "Posessed Mummy";
			CFrameQuest = CFrame.new(-9516.99316, 172.017181, 6078.46533, 0, 0, -1, 0, 1, 0, 1, 0, 0);
			CFrameMon = CFrame.new(-9582.0224609375, 6.2515273094177, 6205.478515625);
		elseif MyLevel >= 2075 and MyLevel <= 2099 then
			Mon = "Peanut Scout";
			LevelQuest = 1;
			NameQuest = "NutsIslandQuest";
			NameMon = "Peanut Scout";
			CFrameQuest = CFrame.new(-2104.3908691406, 38.104167938232, -10194.21875, 0, 0, -1, 0, 1, 0, 1, 0, 0);
			CFrameMon = CFrame.new(-2143.2419433594, 47.721984863281, -10029.995117188);
		elseif MyLevel >= 2100 and MyLevel <= 2124 then
			Mon = "Peanut President";
			LevelQuest = 2;
			NameQuest = "NutsIslandQuest";
			NameMon = "Peanut President";
			CFrameQuest = CFrame.new(-2104.3908691406, 38.104167938232, -10194.21875, 0, 0, -1, 0, 1, 0, 1, 0, 0);
			CFrameMon = CFrame.new(-1859.3540039062, 38.103168487549, -10422.4296875);
		elseif MyLevel >= 2125 and MyLevel <= 2149 then
			Mon = "Ice Cream Chef";
			LevelQuest = 1;
			NameQuest = "IceCreamIslandQuest";
			NameMon = "Ice Cream Chef";
			CFrameQuest = CFrame.new(-820.64825439453, 65.819526672363, -10965.795898438, 0, 0, -1, 0, 1, 0, 1, 0, 0);
			CFrameMon = CFrame.new(-872.24658203125, 65.81957244873, -10919.95703125);
		elseif MyLevel >= 2150 and MyLevel <= 2199 then
			Mon = "Ice Cream Commander";
			LevelQuest = 2;
			NameQuest = "IceCreamIslandQuest";
			NameMon = "Ice Cream Commander";
			CFrameQuest = CFrame.new(-820.64825439453, 65.819526672363, -10965.795898438, 0, 0, -1, 0, 1, 0, 1, 0, 0);
			CFrameMon = CFrame.new(-558.06103515625, 112.04895782471, -11290.774414062);
		elseif MyLevel >= 2200 and MyLevel <= 2224 then
			Mon = "Cookie Crafter";
			LevelQuest = 1;
			NameQuest = "CakeQuest1";
			NameMon = "Cookie Crafter";
			CFrameQuest = CFrame.new(-2021.32007, 37.7982254, -12028.7295, .957576931, -8.80302053e-08, .288177818, 6.9301187e-08, 1, 7.51931211e-08, -0.288177818, -5.2032135e-08, .957576931);
			CFrameMon = CFrame.new(-2374.13671875, 37.798263549805, -12125.30859375);
		elseif MyLevel >= 2225 and MyLevel <= 2249 then
			Mon = "Cake Guard";
			LevelQuest = 2;
			NameQuest = "CakeQuest1";
			NameMon = "Cake Guard";
			CFrameQuest = CFrame.new(-2021.32007, 37.7982254, -12028.7295, .957576931, -8.80302053e-08, .288177818, 6.9301187e-08, 1, 7.51931211e-08, -0.288177818, -5.2032135e-08, .957576931);
			CFrameMon = CFrame.new(-1598.3070068359, 43.773197174072, -12244.581054688);
		elseif MyLevel >= 2250 and MyLevel <= 2274 then
			Mon = "Baking Staff";
			LevelQuest = 1;
			NameQuest = "CakeQuest2";
			NameMon = "Baking Staff";
			CFrameQuest = CFrame.new(-1927.91602, 37.7981339, -12842.5391, -0.96804446, 4.22142143e-08, .250778586, 4.74911062e-08, 1, 1.49904711e-08, -0.250778586, 2.64211941e-08, -0.96804446);
			CFrameMon = CFrame.new(-1887.8099365234, 77.618507385254, -12998.350585938);
		elseif MyLevel >= 2275 and MyLevel <= 2299 then
			Mon = "Head Baker";
			LevelQuest = 2;
			NameQuest = "CakeQuest2";
			NameMon = "Head Baker";
			CFrameQuest = CFrame.new(-1927.91602, 37.7981339, -12842.5391, -0.96804446, 4.22142143e-08, .250778586, 4.74911062e-08, 1, 1.49904711e-08, -0.250778586, 2.64211941e-08, -0.96804446);
			CFrameMon = CFrame.new(-2216.1882324219, 82.884521484375, -12869.293945312);
		elseif MyLevel >= 2300 and MyLevel <= 2324 then
			Mon = "Cocoa Warrior";
			LevelQuest = 1;
			NameQuest = "ChocQuest1";
			NameMon = "Cocoa Warrior";
			CFrameQuest = CFrame.new(233.22836303711, 29.876001358032, -12201.233398438);
			CFrameMon = CFrame.new(-21.553283691406, 80.574996948242, -12352.387695312);
		elseif MyLevel >= 2325 and MyLevel <= 2349 then
			Mon = "Chocolate Bar Battler";
			LevelQuest = 2;
			NameQuest = "ChocQuest1";
			NameMon = "Chocolate Bar Battler";
			CFrameQuest = CFrame.new(233.22836303711, 29.876001358032, -12201.233398438);
			CFrameMon = CFrame.new(582.59057617188, 77.188095092773, -12463.162109375);
		elseif MyLevel >= 2350 and MyLevel <= 2374 then
			Mon = "Sweet Thief";
			LevelQuest = 1;
			NameQuest = "ChocQuest2";
			NameMon = "Sweet Thief";
			CFrameQuest = CFrame.new(150.50663757324, 30.693693161011, -12774.502929688);
			CFrameMon = CFrame.new(165.1884765625, 76.058853149414, -12600.836914062);
		elseif MyLevel >= 2375 and MyLevel <= 2399 then
			Mon = "Candy Rebel";
			LevelQuest = 2;
			NameQuest = "ChocQuest2";
			NameMon = "Candy Rebel";
			CFrameQuest = CFrame.new(150.50663757324, 30.693693161011, -12774.502929688);
			CFrameMon = CFrame.new(134.86563110352, 77.247680664062, -12876.547851562);
		elseif MyLevel >= 2400 and MyLevel <= 2424 then
			Mon = "Candy Pirate";
			LevelQuest = 1;
			NameQuest = "CandyQuest1";
			NameMon = "Candy Pirate";
			CFrameQuest = CFrame.new(-1150.0400390625, 20.378934860229, -14446.334960938);
			CFrameMon = CFrame.new(-1310.5003662109, 26.016523361206, -14562.404296875);
		elseif MyLevel >= 2425 and MyLevel <= 2449 then
			Mon = "Snow Demon";
			LevelQuest = 2;
			NameQuest = "CandyQuest1";
			NameMon = "Snow Demon";
			CFrameQuest = CFrame.new(-1150.0400390625, 20.378934860229, -14446.334960938);
			CFrameMon = CFrame.new(-880.20062255859, 71.247764587402, -14538.609375);
		elseif MyLevel >= 2450 and MyLevel <= 2474 then
			Mon = "Isle Outlaw";
			LevelQuest = 1;
			NameQuest = "TikiQuest1";
			NameMon = "Isle Outlaw";
			CFrameQuest = CFrame.new(-16547.748046875, 61.135334014893, -173.41360473633);
			CFrameMon = CFrame.new(-16442.814453125, 116.13899993896, -264.46377563477);
		elseif MyLevel >= 2475 and MyLevel <= 2524 then
			Mon = "Island Boy";
			LevelQuest = 2;
			NameQuest = "TikiQuest1";
			NameMon = "Island Boy";
			CFrameQuest = CFrame.new(-16547.748046875, 61.135334014893, -173.41360473633);
			CFrameMon = CFrame.new(-16901.26171875, 84.067565917969, -192.88906860352);
		elseif MyLevel >= 2525 and MyLevel <= 2550 then
			Mon = "Isle Champion";
			LevelQuest = 2;
			NameQuest = "TikiQuest2";
			NameMon = "Isle Champion";
			CFrameQuest = CFrame.new(-16539.078125, 55.686328887939, 1051.5738525391);
			CFrameMon = CFrame.new(-16641.6796875, 235.78254699707, 1031.2829589844);
		elseif MyLevel >= 2550 and MyLevel <= 2574 then
			Mon = "Serpent Hunter";
			LevelQuest = 1;
			NameQuest = "TikiQuest3";
			NameMon = "Serpent Hunter";
			CFrameQuest = CFrame.new(-16665.1914, 104.596405, 1579.69434, .951068401, 0, -0.308980465, 0, 1, 0, .308980465, 0, .951068401);
			CFrameMon = CFrame.new(-16521.0625, 106.09285, 1488.78467, .469467044, 0, .882950008, 0, 1, 0, -0.882950008, 0, .469467044);
		elseif MyLevel >= 2575 and MyLevel <= 2599 then
			Mon = "Skull Slayer";
			LevelQuest = 2;
			NameQuest = "TikiQuest3";
			NameMon = "Skull Slayer";
			CFrameQuest = CFrame.new(-16665.1914, 104.596405, 1579.69434, .951068401, 0, -0.308980465, 0, 1, 0, .308980465, 0, .951068401);
			CFrameMon = CFrame.new(-16855.043, 122.457253, 1478.15308, -0.999392271, 0, -0.0348687991, 0, 1, 0, .0348687991, 0, -0.999392271);
		elseif MyLevel >= 2600 and MyLevel <= 2624 then
			Mon = "Reef Bandit";
			LevelQuest = 1;
			NameQuest = "SubmergedQuest1";
			NameMon = "Reef Bandit";
			CFrameMon = CFrame.new(10943.0811, -2083.03516, 9177.33691, -0.998713255, -0.0461204648, .021090759, -0.0451571345, .998007238, .0440727882, -0.0230813865, .0430636741, -0.998805642);
			CFrameQuest = CFrame.new(10780.107421875, -2087.7214355469, 9261.865234375);
		elseif MyLevel >= 2625 and MyLevel <= 2649 then
			Mon = "Coral Pirate";
			LevelQuest = 2;
			NameQuest = "SubmergedQuest1";
			NameMon = "Coral Pirate";
			CFrameQuest = CFrame.new(10780.107421875, -2087.7214355469, 9261.865234375);
			CFrameMon = CFrame.new(10713.4473, -2093.04517, 9307.14844, .325602472, 7.02769976e-05, .945506752, -7.02769976e-05, 1, -5.01261711e-05, -0.945506752, -5.01261711e-05, .325602472);
		elseif MyLevel >= 2650 and MyLevel <= 2674 then
			Mon = "Sea Chanter";
			LevelQuest = 1;
			NameQuest = "SubmergedQuest2";
			NameMon = "Sea Chanter";
			CFrameQuest = CFrame.new(10883.587890625, -2086.1970214844, 10032.196289062);
			CFrameMon = CFrame.new(10647.606445312, -2077.6257324219, 10079.962890625);
		elseif MyLevel >= 2675 and MyLevel <= 2699 then
			Mon = "High Disciple";
			LevelQuest = 1;
			NameQuest = "SubmergedQuest3";
			NameMon = "High Disciple";
			CFrameQuest = CFrame.new(9635.8701171875, -1992.4481201172, 9614.3935546875);
			CFrameMon = CFrame.new(9843.578125, -1993.4559326172, 9696.48046875);
		elseif MyLevel >= 2700 then
			Mon = "Grand Devotee";
			LevelQuest = 2;
			NameQuest = "SubmergedQuest3";
			NameMon = "Grand Devotee";
			CFrameQuest = CFrame.new(9635.8701171875, -1992.4481201172, 9614.3935546875);
			CFrameMon = CFrame.new(9591.0546875, -1993.4742431641, 9808.705078125);
		end;
	end;
end;