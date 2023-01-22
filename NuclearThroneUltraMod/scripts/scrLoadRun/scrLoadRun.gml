///xxx();
// /@description
///@param
function scrLoadRun(){
	var fileString ="ntultrarun1.sav";
	if (file_exists(fileString))
	{
		UberCont.race = 1
		UberCont.loadedRun = true;
	    with instance_create(x,y,GenCont)
	    {race = 1
	    crown = 2}
		with UberCont {
			lastwishused=false;
			routeString = "";
			time_frame = 0;
			time_microseconds=0;
			time_seconds=0;
			time_minutes=0;
			time_hours=0;	
		}
	    instance_create(x,y,Player);
		var file = file_text_open_read(fileString);
		var saveString = file_text_read_string(file);
		file_text_close(file);
		var hash = string_copy(saveString,string_length(saveString)-40,40);
		var hashlessString = string_copy(saveString,1,string_length(saveString)-42);
		var newHash = sha1_string_utf8(hashlessString);
	
		if (hash == newHash)
		{
			var encryptedRun = json_parse(hashlessString);
			if is_struct(encryptedRun)
			{
				Player.area = 100//encryptedRun.area;
				BackCont.area = 100//encryptedRun.area;
				UberCont.area = 100//encryptedRun.area;
				Player.subarea = encryptedRun.subarea;
				BackCont.subarea = encryptedRun.subarea;
				Player.lastarea = encryptedRun.lastarea;
				Player.lastsubarea = encryptedRun.lastsubarea;
				Player.loops = encryptedRun.loops;
				UberCont.lastSaveLoop = encryptedRun.loops;
				Player.crown = encryptedRun.crown;
				GenCont.crown = encryptedRun.crown;
				Player.ammo[0] = encryptedRun.ammo[0];
				Player.ammo[1] = encryptedRun.ammo[1];
				Player.ammo[2] = encryptedRun.ammo[2];
				Player.ammo[3] = encryptedRun.ammo[3];
				Player.ammo[4] = encryptedRun.ammo[4];
				Player.ammo[5] = encryptedRun.ammo[5];
				Player.typ_ammo[0] = encryptedRun.typ_ammo[0];
				Player.typ_ammo[1] = encryptedRun.typ_ammo[1];
				Player.typ_ammo[2] = encryptedRun.typ_ammo[2];
				Player.typ_ammo[3] = encryptedRun.typ_ammo[3];
				Player.typ_ammo[4] = encryptedRun.typ_ammo[4];
				Player.typ_ammo[5] = encryptedRun.typ_ammo[5];
				Player.typ_amax[0] = encryptedRun.maxammo[0];
				Player.typ_amax[1] = encryptedRun.maxammo[1];
				Player.typ_amax[2] = encryptedRun.maxammo[2];
				Player.typ_amax[3] = encryptedRun.maxammo[3];
				Player.typ_amax[4] = encryptedRun.maxammo[4];
				Player.typ_amax[5] = encryptedRun.maxammo[5];
				var targetLength = array_length(Player.skill_got);
				Player.skill_got = encryptedRun.skill_got;
				debug(targetLength);
				while (array_length(Player.skill_got) < targetLength)
				{
					Player.skill_got[array_length(Player.skill_got)] = 0;
				}
				var targetLength = array_length(Player.ultra_got);
				Player.ultra_got = encryptedRun.ultra_got;
				while (array_length(Player.ultra_got) < targetLength)
				{
					Player.ultra_got[array_length(Player.ultra_got)] = 0;
				}
				Player.maxhealth = encryptedRun.maxhp;
				Player.my_health = encryptedRun.hp;
				Player.strongspirit = encryptedRun.strongspirit;
				Player.strongspiritused = encryptedRun.strongspiritused;
				Player.isAlkaline = encryptedRun.alkaline;
				UberCont.lastwishused = encryptedRun.lastwishused;
				Player.rage = encryptedRun.rage;
				if variable_struct_exists(encryptedRun, "humphrySkill")
					Player.humphrySkill = encryptedRun.humphrySkill;
				Player.skeletonlives = encryptedRun.skeletonlives;
				Player.patience = encryptedRun.patience;
				Player.skillpoints = encryptedRun.skillpoints;
				Player.level = encryptedRun.level;
				Player.maxlevel = encryptedRun.maxlevel;
				Player.rad = encryptedRun.rad;
				Player.raddrop = encryptedRun.raddrop;
				Player.ultramod = encryptedRun.ultramod;
				Player.skillsChosen = encryptedRun.skillsChosen;
				Player.wep = encryptedRun.wep;
				Player.bwep = encryptedRun.bwep;
				Player.cwep = encryptedRun.cwep;
				Player.curse = encryptedRun.curse;
				Player.bcurse = encryptedRun.bcurse;
				Player.ccurse = encryptedRun.ccurse;
				Player.wepmod1 = encryptedRun.wepmod1;
				Player.wepmod2 = encryptedRun.wepmod2;
				Player.wepmod3 = encryptedRun.wepmod3;
				Player.wepmod4 = encryptedRun.wepmod4;
				Player.bwepmod1 = encryptedRun.bwepmod1;
				Player.bwepmod2 = encryptedRun.bwepmod2;
				Player.bwepmod3 = encryptedRun.bwepmod3;
				Player.bwepmod4 = encryptedRun.bwepmod4;
				Player.cwepmod1 = encryptedRun.cwepmod1;
				Player.cwepmod2 = encryptedRun.cwepmod2;
				Player.cwepmod3 = encryptedRun.cwepmod3;
				Player.cwepmod4 = encryptedRun.cwepmod4;
				Player.rogueammo = encryptedRun.rogueammo;
				Player.rogueammomax = encryptedRun.rogueammomax;
				Player.ultraNow = encryptedRun.ultraNow;
				UberCont.opt_gamemode = encryptedRun.gamemode;
				if UberCont.opt_gamemode == 26 || UberCont.opt_gamemode == 27
					UberCont.opt_gamemode = 0;
				UberCont.killedBoss = encryptedRun.killedBoss;
				UberCont.collectedRewards = encryptedRun.collectedRewards;
				UberCont.enableReroll = encryptedRun.enableReroll;
				UberCont.radUp = encryptedRun.radUp;
				UberCont.maxHpIncrease = encryptedRun.maxHpIncrease;
				UberCont.levelIncrease = encryptedRun.levelIncrease;
				UberCont.savedSeed = encryptedRun.seed;
				UberCont.useSeed = true;
				UberCont.seed = encryptedRun.seed;
				Player.horrorEtaken = encryptedRun.horrorEtaken;
				Player.hogpoints = encryptedRun.hogpoints;
				if variable_struct_exists(encryptedRun, "usedHogInvestment")
					Player.usedHogInvestment = encryptedRun.usedHogInvestment;
				else
					Player.usedHogInvestment = true;
				Player.boostLevel = encryptedRun.boostLevel;
				if variable_struct_exists(encryptedRun, "routeString")
					UberCont.routeString = encryptedRun.routeString;
				if variable_struct_exists(encryptedRun, "time_frame")
					UberCont.time_frame = encryptedRun.time_frame;
				UberCont.time_microseconds = encryptedRun.time_microseconds;
				UberCont.time_seconds = encryptedRun.time_seconds;
				UberCont.time_minutes = encryptedRun.time_minutes;
				UberCont.time_hours = encryptedRun.time_hours;
				Player.race = encryptedRun.race;
				UberCont.race = encryptedRun.race;
				GenCont.race = encryptedRun.race;
				Player.ultimategamble = encryptedRun.ultimategamble;
				Player.bettermelee = encryptedRun.bettermelee;
				Player.betterlaserbrain = encryptedRun.betterlaserbrain;
				Player.betterpluto = max(Player.betterpluto,encryptedRun.betterpluto);
				Player.betterrabbitpaw = encryptedRun.betterrabbitpaw;
				Player.betterrecyclegland = encryptedRun.betterrecyclegland;
				Player.betterboltmarrow = encryptedRun.betterboltmarrow;
				Player.bskin = encryptedRun.bskin;
				Player.accuracy = encryptedRun.accuracy;
				Player.standartAccuracy = encryptedRun.standartAccuracy;
				Player.kills = encryptedRun.kills;
				Player.invertedchance = encryptedRun.invertedchance;
				Player.crownvisits = encryptedRun.crownvisits;
				Player.hard = encryptedRun.hard;
				if variable_struct_exists(encryptedRun, "maxspeed")
					Player.maxSpeed = encryptedRun.maxspeed;
				else
					Player.maxSpeed = encryptedRun.maxSpeed;
				Player.hammerheadcounter = encryptedRun.hammerheadcounter;
				Player.lag = encryptedRun.lag;
				Player.hardshell = encryptedRun.hardshell;
				Player.visitedCrib = encryptedRun.visitedCrib;
				Player.meltingd = encryptedRun.meltingd;
				Player.heavyheart = encryptedRun.heavyheart;
				Player.freeArmourStrike = encryptedRun.freeArmourStrike;
				Player.armour = encryptedRun.armour;
				Player.maxarmour = encryptedRun.maxarmour;
				UberCont.crownVaultChallenge = encryptedRun.crownVaultChallenge;
				Player.randomlySelected = encryptedRun.randomlySelected;
				UberCont.canSave = true//encryptedRun.canSave;
				Player.saveLoaded = true;//To position to save station,
				if variable_struct_exists(encryptedRun, "inverted")
					Player.inverted = encryptedRun.inverted;
				if variable_struct_exists(encryptedRun, "altUltra")
					Player.altUltra = encryptedRun.altUltra;
				if variable_struct_exists(encryptedRun, "reachedUltra")
					Player.reachedUltra = encryptedRun.reachedUltra;
				else
					Player.reachedUltra = true;
				if variable_struct_exists(encryptedRun, "tookDestiny")
					Player.tookDestiny = encryptedRun.tookDestiny;
				else
					Player.tookDestiny = true;
				if variable_struct_exists(encryptedRun, "pSpeedBoost")
					Player.pSpeedBoost = encryptedRun.pSpeedBoost;
				else
					Player.pSpeedBoost = true;
				if variable_struct_exists(encryptedRun, "livesRegain")
					Player.livesRegain = encryptedRun.livesRegain;
				else
				{
					var i = 0;
					repeat(Player.skeletonlives)
					{
						Player.livesRegain[i] = 3;
						i++;
					}
				}
				if variable_struct_exists(encryptedRun, "canSpawnInversionShards")
					UberCont.canSpawnInversionShards = encryptedRun.canSpawnInversionShards;
				if variable_struct_exists(encryptedRun, "canSpawnInversionShards")
					UberCont.collectedInversionShards = encryptedRun.collectedInversionShards;
				if variable_struct_exists(encryptedRun, "canSpawnInversionShards")
					UberCont.collectedInversionShardReward = encryptedRun.collectedInversionShardReward;
				if variable_struct_exists(encryptedRun, "cash")
					Player.cash = encryptedRun.cash;
				if variable_struct_exists(encryptedRun, "lstCash")
					Player.lstCash = encryptedRun.lstCash;
				if variable_struct_exists(encryptedRun, "maxCash")
					Player.maxCash = encryptedRun.maxCash;
				if variable_struct_exists(encryptedRun, "canHeal")
					Player.canHeal = encryptedRun.canHeal;
				if variable_struct_exists(encryptedRun, "extraVan")
					UberCont.extraVan = encryptedRun.extraVan;
				if variable_struct_exists(encryptedRun, "killedInvertedThrone2")
					UberCont.killedInvertedThrone2 = encryptedRun.killedInvertedThrone2;
				if variable_struct_exists(encryptedRun, "hasFoughtInvadingThrone")
					UberCont.hasFoughtInvadingThrone = encryptedRun.hasFoughtInvadingThrone;
				if variable_struct_exists(encryptedRun, "revivedCharacters")
					UberCont.revivedCharacters = encryptedRun.revivedCharacters;
				if variable_struct_exists(encryptedRun, "beatTheGame")
					UberCont.beatTheGame = encryptedRun.beatTheGame;
				if variable_struct_exists(encryptedRun, "spr_idle")
					Player.spr_idle = encryptedRun.spr_idle;
				if variable_struct_exists(encryptedRun, "spr_walk")
					Player.spr_walk = encryptedRun.spr_walk;
				if variable_struct_exists(encryptedRun, "spr_hurt")
					Player.spr_hurt = encryptedRun.spr_hurt;
				if variable_struct_exists(encryptedRun, "spr_dead")
					Player.spr_dead = encryptedRun.spr_dead;
				if variable_struct_exists(encryptedRun, "lastEnemyKilled")
					Player.lastEnemyKilled = encryptedRun.lastEnemyKilled;
				Player.useGuarenteedReroll = true;
					
			}
			with Player
			{
				if race == 7 && bskin == 2
				{
					gunY = 4;
				}
				//RACE STUFF
				scrLoadRace();
				scrLoadRunSkins();//ALT ultra skins
				//Some ultras change weapon stats:
				scrWeapons();
				scrWeaponHold();
				//Some alt ultras need different descriptions
				var ug = ultra_got;
				scrUltras();
				ultra_got = ug;
				var i = 0
				repeat(maxskill+1)
				{
					if skill_got[i]
						totalSkills++;
					i += 1;
				}
			}
			room_restart();
		}
		else
		{
			show_error("incorrect encrypted run data",true);	
		}
	}
}