function scrSaveRun() {
	with UberCont
	{
		lastSaveLoop = Player.loops;
		encrypted_run_data = {
			area: Player.area,
			subarea: Player.subarea,
			lastarea: Player.lastarea,
			lastsubarea: Player.lastsubarea,
			loops: Player.loops,
			crown: Player.crown,
			ammo: [Player.ammo[0],Player.ammo[1],Player.ammo[2],Player.ammo[3],Player.ammo[4],Player.ammo[5]],
			typ_ammo: [Player.typ_ammo[0],Player.typ_ammo[1],Player.typ_ammo[2],Player.typ_ammo[3],Player.typ_ammo[4],Player.typ_ammo[5]],
			maxammo: [Player.typ_amax[0],Player.typ_amax[1],Player.typ_amax[2],Player.typ_amax[3],Player.typ_amax[4],Player.typ_amax[5]],
			skill_got: Player.skill_got,
			ultra_got: Player.ultra_got,
			maxhp: Player.maxhealth,
			hp: Player.my_health,
			strongspirit: Player.strongspirit,
			strongspiritused: Player.strongspiritused,
			alkaline: Player.isAlkaline,
			lastwishused: UberCont.lastwishused,
			rage: Player.rage,
			humphryskill: Player.HumphrySkill,
			skeletonlives: Player.skeletonlives,
			livesRegain: Player.livesRegain,
			patience: Player.patience,
			skillpoints: Player.skillpoints,
			level: Player.level,
			maxlevel: Player.maxlevel,
			rad: Player.rad,
			raddrop: Player.raddrop,
			ultramod: Player.ultramod,
			skillsChosen: Player.skillsChosen,
			wep: Player.wep,
			bwep: Player.bwep,
			cwep: Player.cwep,
			curse: Player.curse,
			bcurse: Player.bcurse,
			ccurse: Player.ccurse,
			wepmod1: Player.wepmod1, 
			wepmod2: Player.wepmod2, 
			wepmod3: Player.wepmod3, 
			wepmod4: Player.wepmod4,
			bwepmod1: Player.bwepmod1,
			bwepmod2: Player.bwepmod2,
			bwepmod3: Player.bwepmod3,
			bwepmod4: Player.bwepmod4,
			cwepmod1: Player.cwepmod1,
			cwepmod2: Player.cwepmod2,
			cwepmod3: Player.cwepmod3,
			cwepmod4: Player.cwepmod4,
			rogueammo: Player.rogueammo,
			rogueammomax: Player.rogueammomax,
			ultraNow: Player.ultraNow,
			gamemode: UberCont.opt_gamemode,
			killedBoss: UberCont.killedBoss,
			collectedRewards: UberCont.collectedRewards,
			enableReroll: UberCont.enableReroll,
			radUp: UberCont.radUp,
			maxHpIncrease: UberCont.maxHpIncrease,
			levelIncrease: UberCont.levelIncrease,
			seed: UberCont.savedSeed,
			horrorEtaken: Player.horrorEtaken,
			hogpoints: Player.hogpoints,
			usedHogInvestment: Player.usedHogInvestment,
			boostLevel: Player.boostLevel,
			time_microseconds: UberCont.time_microseconds,
			time_seconds: UberCont.time_seconds,
			time_minutes: UberCont.time_minutes,
			time_hours: UberCont.time_hours,
			race: Player.race,
			ultimategamble: Player.ultimategamble,
			bettermelee: Player.bettermelee,
			betterlaserbrain: Player.betterlaserbrain,
			betterpluto: Player.betterpluto,
			betterrabbitpaw: Player.betterrabbitpaw,
			betterrecyclegland: Player.betterrecyclegland,
			betterboltmarrow: Player.betterboltmarrow,
			bskin: Player.bskin,
			accuracy: Player.accuracy,
			standartAccuracy: Player.standartAccuracy,
			kills: Player.kills,
			invertedchance: Player.invertedchance,
			crownvisits: Player.crownvisits,
			hard: Player.hard,
			maxspeed: Player.maxspeed,
			hammerheadcounter: Player.hammerheadcounter,
			lag: Player.lag,
			hardshell: Player.hardshell,
			visitedCrib: Player.visitedCrib,
			meltingd: Player.meltingd,
			heavyheart: Player.heavyheart,
			freeArmourStrike: Player.freeArmourStrike,
			armour: Player.armour,
			maxarmour: Player.maxarmour,
			crownVaultChallenge: UberCont.crownVaultChallenge,
			randomlySelected: Player.randomlySelected,
			canSave: UberCont.canSave,
			altUltra: Player.altUltra,
			reachedUltra: Player.reachedUltra,
			tookDestiny: Player.tookDestiny,
			pSpeedBoost: Player.pSpeedBoost,
			canSpawnInversionShards: UberCont.canSpawnInversionShards,
			collectedInversionShards: UberCont.collectedInversionShards,
			collectedInversionShardReward: UberCont.collectedInversionShardReward,
			inverted: Player.inverted,
		};
		with UberCont
		{
			useSeed = true;
			seed = savedSeed;
		}
		var saveString = json_stringify(encrypted_run_data);
		var hash = sha1_string_utf8(saveString);
		saveString += "#" + hash + "#";
		var saveFile ="ntultrarun1.sav";
		/*
		if (file_exists(saveFile))
		{
			file_delete(saveFile);
		}
		*/
		var file = file_text_open_write(saveFile);
		file_text_write_string(file,saveString);
		file_text_close(file);
	}
}
