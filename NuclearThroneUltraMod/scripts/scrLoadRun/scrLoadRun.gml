///xxx();
// /@description
///@param
function scrLoadRun(){
	var fileString ="ntultrarun1.sav";
	if (file_exists(fileString))
	{
		UberCont.race = 1
	    with instance_create(x,y,GenCont)
	    {race = 1
	    crown = 2}
		with UberCont {
			lastwishused=false;
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
				Player.skill_got = encryptedRun.skill_got;
				Player.ultra_got = encryptedRun.ultra_got;
				Player.maxhealth = encryptedRun.maxhp;
				Player.my_health = encryptedRun.hp;
				Player.strongspirit = encryptedRun.strongspirit;
				Player.strongspiritused = encryptedRun.strongspiritused;
				Player.isAlkaline = encryptedRun.alkaline;
				UberCont.lastwishused = encryptedRun.lastwishused;
				Player.rage = encryptedRun.rage;
				Player.HumphrySkill = encryptedRun.humphryskill;
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
				Player.boostLevel = encryptedRun.boostLevel;
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
				Player.betterpluto = encryptedRun.betterpluto;
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
				Player.maxspeed = encryptedRun.maxspeed;
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
				if variable_struct_exists(encryptedRun, "altUltra")
					Player.altUltra = encryptedRun.altUltra;
			}
			with Player
			{
				if race == 7 && bskin == 2
				{
					gunY = 4;
				}
				//RACE STUFF
				scrLoadRace();
				//Some ultras change weapon stats:
				scrWeapons();
				scrWeaponHold();
			}
			debug("load complete");
			room_restart();
		}
		else
		{
			show_error("incorrect encrypted run data",true);	
		}
	}
}