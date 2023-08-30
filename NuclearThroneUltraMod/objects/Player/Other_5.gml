/// @description Black sword? and UNLOCKABLES
consecutiveGoodBloodGambles = 0;
if swapChar
	exit;
if ultra_got[50] && altUltra
	charpoints = 1;

if (area == 1 || area == 101 || area == 10) && instance_exists(WepPickup)
{
	with WepPickup
	{
		if wep == 46 && !persistent
			other.canblacksword=true
	}
}
///next level what procedure
/*
if ( loops mod 2 == 0  && loops>1)
{//check if loop is above loop 1 and an even number 2 4 6 8
scrNextLevelInverted();//even
} 
else
{
scrNextLevel();//odd
}
*/
var cameFromOuterSpace = (area == 100 || area == 104 || scrIsInInvertedArea());
scrNextLevel();
if UberCont.killedInvertedThrone2 && !cameFromOuterSpace && UberCont.collectedInversionShards < 3 && scrIsInInvertedArea()
{
	UberCont.canSpawnInversionShards = true;
}
else
{
	UberCont.canSpawnInversionShards = false;
}
if race == 27 && canHeal
{
	if scrIsInInvertedArea()
	{
		var am = 3;
		if ultra_got[106]
			am = 5;
		
		my_health += am;
	}
}
if ultra_got[51] && altUltra
{
	sheepFakeouts = 3 + (skill_got[5] * 2);
}
///at the end of a level stuff
if patience>0||(ultra_got[0]=1 && !altUltra)
{
skillpoints+=patience;
skillsChosen-=patience;
patience=0;
}

invertedportalcounter=0;


if hard > UberCont.cbst_diff[race]
UberCont.cbst_diff[race] = hard

//Health manipulation!
if race=16
{
	if skill_got[5]
		freeArmourStrike = true;
    armour++;
}
if ultra_got[62]//Viking armour up ultra
	    armour++;

if race==10 && canHeal//Rebel pasive
{
	//(maxhealth-my_health)/2
	if my_health<maxhealth
		my_health += round((maxhealth-my_health)*0.5);
}
else if race=12//yung cuz reset max HP
{
	if maxhealth < 2
	{
		yungCuzCskin ++;	
	}
	else
	{
		yungCuzCskin = 0;	
	}
	var targetHealth = 8;
	if scrIsGamemode(5)
		targetHealth = 1;
	if skill_got[1] == 1//Rhino skin
		targetHealth += 4;
	if skill_got[33] == 1//Glass arm cannon
		targetHealth -= 2;
	if scrIsGamemode(9)
		targetHealth += UberCont.casualModeHPIncrease;
	targetHealth += UberCont.maxHpIncrease;
	maxhealth = targetHealth;
	
}
if ((ultra_got[40] = 1 || (ultra_got[47] && altUltra)) && canHeal)
{
	//Rebel Ultra D YUNG CUZ ULTRA C
	my_health=max(my_health,maxhealth);
}

//CROWN OF LIFE
if scrIsCrown(2) && canHeal
{
	if ultra_got[62] && altUltra //Living armour
	{
		armour = maxarmour;
	}
	else
	{
		if my_health >= maxhealth
		{
			my_health = max(my_health,maxhealth);
			my_health += 1;
		}
		else
		{
			my_health = max(my_health,maxhealth);
		}
	}
	/*
	var toHeal = maxhealth - min(my_health,maxhealth);
	//my_health = maxhealth;
	var overheal = (maxhealth - toHeal) * 0.25;
	my_health = max(maxhealth,my_health + overheal);
	*/
}
else if scrIsCrown(30)
{
	kills = max(0,kills-20);
}
else if scrIsCrown(31)
{
	kills += 20;
}
else if scrIsCrown(22)//Crown of luck
{
	
	if ultra_got[62] && altUltra //Living armour
	{
		armour = 1;
	}
	else
	{
		my_health = 1;
		prevhealth = 1;
	}
}
//NOCHEST SHIT
if (instance_exists(WeaponChest) or instance_exists(BigWeaponChest) && area != 100 && !restarted)// and !(area = 1 and subarea = 1)
{
	nochest += 1
}
if area == 1 && subarea == 1 & loops == 0
	nochest = -1;
if scrIsCrown(15)
{
	if ultra_got[31]
	{
		if ccurse == 0
		{
			cwep = 0;	
		}
	}
	else
	{
		if bcurse == 0
		{
			if ultra_got[29] && altUltra && bwep != 0//ROBOT EXCLUSIVE TASTE
			{
				maxhealth += 4;
			}
			bwep = 0;
		}
	}
}
if race == 14//PANDA
{
	if ultra_got[56]=0 && !(ultra_got[55] && altUltra)
    {
		with WepPickup
		{
			if persistent && wasThrown
			{
				scrPandaRoll();
			}
		}
        with ThrowWep
		{
			if persistent
			{
				scrPandaRoll();
			}
		}
    }
}


if scrIsGamemode(10)//random areas
{
	SetSeed();
area=choose(1,2,3,4,5,6,7,8,9,10,choose(105,102,103,106,107,101,100,108,109,110,113,114,115,118,117,118,119,120,121,122,123,124,125,126,127,128,129),choose(105,102,103,106,107,101,100,108,109,110,113,114,115,118,117,118,119,120,121,122,123,124,125,126,127,128,129),
choose(105,102,103,106,107,101,100,108,109,110,113,114,115,118,117,118,119,120,121,122,123,124,125,126,127,128,129));

if rnglevelloop=18
{loops+=1;
rnglevelloop=0;}
rnglevelloop+=1;
subarea=choose(1,2,3);
}

if race==21
{
audio_stop_sound(sndHorrorLoopTB);
audio_stop_sound(sndHorrorLoop);
audio_stop_sound(sndHorrorCashFlow);
audio_stop_sound(sndHorrorCashFlowTB);
horrorcharge=origincharge;
}
oasis=false;

///looping! ---------------------------
if looping && area != 104
{
	my_health = maxhealth;
	prevhealth = my_health;
	ammo[1] += 200;
	ammo[2] += 20;
	ammo[3] += 20;
	ammo[4] += 20;
	ammo[5] += 20;
	if ammo[1] > typ_amax[1]
		ammo[1] = typ_amax[1];

	if ammo[2] > typ_amax[2]
		ammo[2] = typ_amax[2];

	if ammo[3] > typ_amax[3]
		ammo[3] = typ_amax[3];

	if ammo[4] > typ_amax[4]
		ammo[4] = typ_amax[4];

	if ammo[5] > typ_amax[5]
		ammo[5] = typ_amax[5];
	
	scrRegainOneLifePart();
	
	debug("Looping now");
	if loops > 0 && scrIsHardMode()
	{
		scrUnlockGameMode(35,"FOR REACHING LOOP 2#ON HARD MODE",34)
		scrUnlockGameMode(35,"FOR REACHING LOOP 2#ON INFINITE LEVELS#SLOW LEVELING#HARD MODE",40)
	}
	if scrCheckLoopAll()
		scrUnlockCSkin(1,"FOR LOOPING WITH EVERY CHARACTER",0);

	//SKINNS
	if race =3 && skill_got[19]
	scrUnlockCSkin(3,"FOR LOOPING WITH EAGLE EYES#AS EYES",0);

	if race = 4 && skill_got[1]=0 && skill_got[25]=0
	scrUnlockBSkin(4,"FOR LOOPING WITHOUT#RHINO SKIN AND STRONG SPIRIT#AS MELTING",0);

	if loops>1 && race = 4
	scrUnlockCSkin(4,"FOR REACHING LOOP 3#AS MELTING ON 1HP EQUALITY",5);

	if scrIsGamemode(14)
	scrUnlockBSkin(1,"FOR LOOPING ON GAMEMODE:#FISH'S PARTNER ONLY",14);

	if race = 14 && fired=false
	scrUnlockCSkin(14,"FOR LOOPING BY ONLY THROWING WEAPONS#AND NOT USING THEM",0)

	looping=false;
	    UberCont.ctot_loop[race] += 1
	    loops += 1
	    if (ultra_got[73] == 1)
		{
			ultra_got[73] = 0;
			skillpoints ++
			ultraNow = true;
			skillsChosen --;
		}
	        if race==9//Chicken maxhealth regain on loop
	        {
				var targetHealth = 8;
				if scrIsGamemode(5)
					targetHealth = 1;
				if skill_got[1] == 1//Rhino skin
					targetHealth += 4;
				if skill_got[33] == 1//Glass arm cannon
					targetHealth = max(1,targetHealth-2);
				if scrIsGamemode(9)
					targetHealth += UberCont.casualModeHPIncrease;
				targetHealth += UberCont.maxHpIncrease;
	            if maxhealth<targetHealth
	            {
		            maxhealth = min(maxhealth + 2,targetHealth);
	            }
	        }
            
	        if loops == 2 && !scrIsGamemode(15)//not no mutations gamemode
	        {
				UberCont.levelIncrease ++;
				maxlevel++;
	        }
			else if loops = 10 && !scrIsGamemode(15)
	        {
				UberCont.levelIncrease ++;
				maxlevel++;
			}
    
    
	    //uncurse some shit
		if (curse == 1 || bcurse == 1 || ccurse == 1)
			snd_play_2d(sndUncurse);
	    curse=0;
	    bcurse=0;
	    ccurse=0;
    
	//drop VIKING GREAT AXE?
	if race=16&&loops=1{
	with instance_create(x,y,WepPickup)
	{
		persistent=true;
		scrWeapons()
		wep =214
		name = wep_name[wep]
		ammo = 0
		type = wep_type[wep]
		curse = 0
		sprite_index = wep_sprt[wep]
	}}
	//DROP HUNTER HEAVY SNIPER
	if race = 11 && loops = 1
	{
		if scrIsHardMode() //HARD MODE EXCLUSIVE
		with instance_create(x,y,WepPickup)
		{
			persistent = true;
			scrWeapons()
			wep = 610
			name = wep_name[wep]
			ammo = 0
			type = wep_type[wep]
			curse = 0
			sprite_index = wep_sprt[wep]
		}
		else
		with instance_create(x,y,WepPickup)
		{
			persistent = true;
			scrWeapons()
			wep = 316
			name = wep_name[wep]
			ammo = 0
			type = wep_type[wep]
			curse = 0
			sprite_index = wep_sprt[wep]
		}
	}
	else if race = 11 && loops = 2 && scrIsHardMode()
	{
		with instance_create(x,y,WepPickup)
		{
			persistent = true;
			scrWeapons()
			wep = 611
			name = wep_name[wep]
			ammo = 0
			type = wep_type[wep]
			curse = 0
			sprite_index = wep_sprt[wep]
		}
	}

	//DROP CHICKEN DARK SWORD
	if ((wep = 328 || bwep = 328 || cwep == 328) && loops == 2) || ((wep = 46 || bwep = 46 || cwep == 46) && loops == 1) || ((wep = 633 || bwep = 633 || cwep == 633) && loops == 2)
	{
		with instance_create(x,y,WepPickup)
		{
		persistent=true;
		scrWeapons()
		wep = 329
		if other.altUltra && other.ultra_got[33]//Burning
			wep = 634;
		name = wep_name[wep]
		ammo = 0
		type = wep_type[wep]
		curse = 0
		sprite_index = wep_sprt[wep]
		}
	}
	else if loops == 1 && (canblacksword || wep = 46 || bwep = 46|| cwep == 46)
	{
		//DROP BLACK SWORD
		with instance_create(x,y,WepPickup)
		{
			persistent=true;
			scrWeapons()
			wep = 328
			if other.altUltra && other.ultra_got[33]//Burning
				wep = 633;
			name = wep_name[wep]
			ammo = 0
			type = wep_type[wep]
			curse = 0
			sprite_index = wep_sprt[wep]
		}

	}
	//DROP GIANT PANDA STICK
	if (wep = 200 || bwep = 200|| cwep == 200) && loops == 1
	{

		with instance_create(x,y,WepPickup)
		{
			persistent=true;
			scrWeapons()
			wep = 512
			name = wep_name[wep]
			ammo = 0
			type = wep_type[wep]
			curse = 0
			sprite_index = wep_sprt[wep]
		}
	}
	//Secret
	if ((wep == 375 && bwep == 375) && isValidGamemodeToUnlock())
	{
		with UberCont
		{
			encrypted_data.secrets[2] = true;
			scrSaveEncrypted();
			with instance_create(x,y,UnlockPopup)
			{
				mytext="UNLOCKED SUPER SECRET#FOR LOOPING WITH TWO INVERSION MAGNETS#HAVE A BURGER!";
			}
			with Player
			{
				wep_name[375] = "HAMBURGER MAGNET"//Probably the worst weapon in the game
				wep_type[375] = 0
				wep_auto[375] = 0
				wep_load[375] = 10
				wep_cost[375] = 1
				wep_sprt[375] = sprHamburgerMagnet
				wep_area[375] = -1
				wep_text[375] = "100% beef"
				wep_swap[375] = sndSelectUp
				wep_rad[375] = 0;
			}
		}
	}
	if ((wep == 231 || bwep == 231 || cwep == 231) && isValidGamemodeToUnlock() && race != 1 && loops > 0)
	{
		with UberCont
		{
			encrypted_data.secrets[1] = true;
			scrSaveEncrypted();
			with instance_create(x,y,UnlockPopup)
			{
				mytext="YOU SHOULD NOT BE PLAYING GUITAR#HERE IS A SUPER SECRET#UNLOCK";
			}
		}
	}

	//DROP ULTRA ROGUE RIFLE
	if (wep = 312 || bwep = 312|| cwep == 312) && loops=1
	{

		with instance_create(x,y,WepPickup)
		{
		persistent=true;
		scrWeapons()
		wep = 427
		name = wep_name[wep]
		ammo = 0
		type = wep_type[wep]
		curse = 0
		sprite_index = wep_sprt[wep]
		}

	}
	//DROP ULTRA HEAVY ROGUE RIFLE
	if (wep = 427 || bwep = 427|| cwep == 427) && loops=2
	{

		with instance_create(x,y,WepPickup)
		{
		persistent=true;
		scrWeapons()
		wep = 602
		name = wep_name[wep]
		ammo = 0
		type = wep_type[wep]
		curse = 0
		sprite_index = wep_sprt[wep]
		}

	}
	
	//DROP GUITAR?
	if race=1
	{
	if loops=1{
	with instance_create(x,y,WepPickup)
	{
	persistent=true;
	scrWeapons()
	wep =231
	name = wep_name[wep]
	ammo = 0
	type = wep_type[wep]
	curse = 0
	sprite_index = wep_sprt[wep]
	}}
	if loops=2 && (wep = 231 || bwep = 231|| cwep == 231){
		with instance_create(x,y,WepPickup)
		{
		persistent=true;
		scrWeapons()
		wep =263
		name = wep_name[wep]
		ammo = 0
		type = wep_type[wep]
		curse = 0
		sprite_index = wep_sprt[wep]
		}
	}

	}
	//Drop ultra sawed off
	if loops == 1 && wep == 443 || bwep == 443 || cwep == 443
	{
		with instance_create(x,y,WepPickup)
		{
			persistent=true;
			scrWeapons()
			wep = 568
			name = wep_name[wep]
			ammo = 0
			type = wep_type[wep]
			curse = 0
			sprite_index = wep_sprt[wep]
		}
	}
	//GOLDEN FROG PISTOL
	if race = 23
	{

		if loops = 1 && wep == 348 || bwep == 348 || cwep == 348 {
			with instance_create(x,y,WepPickup)
			{
				persistent=true;
				scrWeapons()
				wep =349
				name = wep_name[wep]
				ammo = 0
				type = wep_type[wep]
				curse = 0
				sprite_index = wep_sprt[wep]
			}
		}

	}
    
	    if loops > UberCont.cbst_loop[race]&&scrIsGamemode(0)
			UberCont.cbst_loop[race] = loops//this doesn't get saved if gamemode is not normal mode
    
	    if  UberCont.opt_gamemode!=10
	    {/*
	        if loops>1
	        {
	            if ( ( loops & 1 ) == 1 ) {
	            area=1
	            // it's odd
	            /*} else{
	            // it's even go inverted
	            area=105*/
	           // } 
	       // }
	       // else
	        area=1;
	    }
    
	subarea = 1
    
}


if restarted
	exit;

if area != 100 && area != 103
{
	noHit ++;
	if noHit > 5
	{
		scrUnlockGameMode(32,"FOR COMPLETING FIVE AREAS#IN A ROW WITHOUT#TAKING A HIT")
	}
}
if scrIsGamemode(32) && (area == 114 || area == 123)
{
	scrUnlockGameMode(33,"FOR REACHING THE JUNGLE#ON GAMEMODE: ONE HIT WONDER")
}
if (area == 9 || area == 118) && race == 11 && weaponspickedup < 1
{
	scrUnlockBSkin(11,"FOR REACHING THE PALACE#WITHOUT PICKING UP A WEAPON#AS HUNTER",0);
}
	
if movethislevel==false&&race=15 &&!instance_exists(MenuGen) &&!instance_exists(Menu) &&  !instance_exists(Vlambeer) && !instance_exists(CrownPickup)
{//ATOM TELEPORT ONLY GAMEMODE UNLOCK
scrUnlockGameMode(7,"FOR COMPLETING AN AREA WITHOUT WALKING")
}

//SKINS
if ( firedthislevel=false && race = 10 && area < 100 && area != 10 && loops>0 )
scrUnlockBSkin(10,"FOR COMPLETING A MAIN AREA#ON LOOP#WITHOUT FIRING AS REBEL",0);

if ( firedthislevel=false && (race == 13) && area <100 && area != 10 && ( area>3 || loops>0 )  )
scrUnlockCSkin(13,"FOR COMPLETING A MAIN AREA# AFTER THE SCRAPYARD#WITHOUT FIRING AS SHEEP",0);

if ( firedthislevel=false && race = 15 && area <100 && area != 10 && ( area>2 || loops>0 )  )
scrUnlockBSkin(15,"FOR COMPLETING A MAIN AREA# AFTER THE SEWERS#WITHOUT FIRING AS ATOM",0);

if ( firedthislevel=false && race = 21 && loops>0 )
scrUnlockCSkin(21,"FOR COMPLETING A MAIN AREA ON#USING ONLY THE BEAM",0);

if ( firedthislevel=false && race = 24 && area < 100 && area != 10 && ( area > 2 || loops > 0 )  )
scrUnlockCSkin(24,"FOR COMPLETING A MAIN AREA# AFTER THE SEWERS#WITHOUT FIRING AS ELEMENTOR",0);

if (yungCuzCskin > 2)
{
	scrUnlockCSkin(12,"FOR COMPLETING 3 LEVELS IN A ROW#WITH 1 MAX HP",0);
}


if scrIsCrown(4) && area !=100 && race = 15
rushcrownlevels++;

if rushcrownlevels=5
scrUnlockCSkin(15,"FOR COMPLETING 5 AREAS IN A ROW#USING CROWN OF HASTE AS ATOM",0);

	StartHogInvestment();

if scrIsGamemode(23) && !instance_exists(Menu) && instance_number(Player) == 1//Random character!
{
	var iWillBecome = 0;
	SetSeed();
	do 
	{
		iWillBecome = 1+irandom(racemax-1);
	} until (UberCont.race_have[iWillBecome] = 1 && iWillBecome != 0);
	with instance_create(x,y,RaceCopier)
	{
		race = iWillBecome;
	}
	var cs = UberCont.crown_start[UberCont.racepick];
	UberCont.crown_start[UberCont.racepick] = false;
	with instance_create(x,y,Player)
	{
		swapChar = true;
		//Copy it all!
		area = other.area
		subarea = other.subarea;
		lastarea = other.lastarea;
		lastsubarea = other.lastsubarea;
		loops = other.loops;
		crown = other.crown;
		ammo[0] = other.ammo[0];
		ammo[1] = other.ammo[1];
		ammo[2] = other.ammo[2];
		ammo[3] = other.ammo[3];
		ammo[4] = other.ammo[4];
		ammo[5] = other.ammo[5];
		typ_ammo[0] = other.typ_ammo[0];
		typ_ammo[1] = other.typ_ammo[1];
		typ_ammo[2] = other.typ_ammo[2];
		typ_ammo[3] = other.typ_ammo[3];
		typ_ammo[4] = other.typ_ammo[4];
		typ_ammo[5] = other.typ_ammo[5];
		typ_amax[0] = other.typ_amax[0];
		typ_amax[1] = other.typ_amax[1];
		typ_amax[2] = other.typ_amax[2];
		typ_amax[3] = other.typ_amax[3];
		typ_amax[4] = other.typ_amax[4];
		typ_amax[5] = other.typ_amax[5];
		skill_got = other.skill_got;
		ultra_got = other.ultra_got;
		my_health = other.my_health;
		strongspirit = other.strongspirit;
		strongspiritused = other.strongspiritused;
		isAlkaline = other.isAlkaline;
		rage = other.rage;
		humphrySkill = other.humphrySkill;
		skeletonlives = other.skeletonlives;
		patience = other.patience;
		skillpoints = other.skillpoints;
		level = other.level;
		maxlevel = other.maxlevel;
		rad = other.rad;
		raddrop = other.raddrop;
		ultramod = other.ultramod;
		skillsChosen = other.skillsChosen;
		wep = other.wep;
		bwep = other.bwep;
		cwep = other.cwep;
		curse = other.curse;
		bcurse = other.bcurse;
		ccurse = other.ccurse;
		isPermanent = other.isPermanent;
		isPermanentB = other.isPermanentB;
		isPermanentC = other.isPermanentC;
		wepmod1 = other.wepmod1;
		wepmod2 = other.wepmod2;
		wepmod3 = other.wepmod3;
		wepmod4 = other.wepmod4;
		bwepmod1 = other.bwepmod1;
		bwepmod2 = other.bwepmod2;
		bwepmod3 = other.bwepmod3;
		bwepmod4 = other.bwepmod4;
		cwepmod1 = other.cwepmod1;
		cwepmod2 = other.cwepmod2;
		cwepmod3 = other.cwepmod3;
		cwepmod4 = other.cwepmod4;
		rogueammo = other.rogueammo;
		rogueammomax = other.rogueammomax;
		ultraNow = other.ultraNow;
		horrorEtaken = other.horrorEtaken;
		hogpoints = other.hogpoints;
		usedHogInvestment = other.usedHogInvestment;
		boostLevel = other.boostLevel;
		ultimategamble = other.ultimategamble;
		kills = other.kills;
		invertedchance = other.invertedchance;
		crownvisits = other.crownvisits;
		hard = other.hard;
		//PLANT
		hammerheadcounter = other.hammerheadcounter;
		lag = other.lag;
		hardshell = other.hardshell;
		visitedCrib = other.visitedCrib;
		meltingd = other.meltingd;
		heavyheart = other.heavyheart;
		freeArmourStrike = other.freeArmourStrike;
		armour = other.armour;
		maxarmour = other.maxarmour;
		randomlySelected = other.randomlySelected;
		inverted = other.inverted;
		altUltra = other.altUltra;
		reachedUltra = other.reachedUltra;
		tookDestiny = other.tookDestiny;
		pSpeedBoost = other.pSpeedBoost;
		livesRegain = other.livesRegain;
		cash = other.cash;
		lstCash = other.lstCash;
		maxCash = other.maxCash;
		canHeal = other.canHeal;
		lastEnemyKilled = other.lastEnemyKilled;
		guarenteedReroll = other.guarenteedReroll;
		phoenixrevives = other.phoenixrevives;
		cwepmod2 = other.cwepmod2
		cwepmod3 = other.cwepmod3
		cwepmod4 = other.cwepmod4
		patience = other.patience;
		strongspirit = other.strongspirit;
		isAlkaline = other.isAlkaline;
		humphrySkill = other.humphrySkill;
		skillpoints = other.skillpoints;
		rogueammo = other.rogueammo;
		rogueammomax = other.rogueammomax;
		ultraNow = other.ultraNow;
		horrorEtaken = other.horrorEtaken;
		hogpoints = other.hogpoints;
		usedHogInvestment = other.usedHogInvestment;
		ultimategamble = other.ultimategamble;
		totalSkills = other.totalSkills;
		scrWeaponHold();
		
		//Re-apply some mutations
		if ultra_got[39] && altUltra
			maxhealth = 40;
		if skill_got[1]
			maxhealth += 4;
		if skill_got[33]
			maxhealth -= 2;
		my_health = other.my_health;
		if ultra_got[62] && altUltra
			maxhealth = 1;
			
		bettermelee = other.bettermelee;
		betterlaserbrain = other.betterlaserbrain;
		betterpluto = max(betterpluto,other.betterpluto);
		betterrabbitpaw = other.betterrabbitpaw;
		betterrecyclegland = other.betterrecyclegland;
		betterboltmarrow = other.betterboltmarrow;
		if skill_got[2] {
			scrApplyExtraFeet();
		}
		if (race == 19 && (ultra_got[73] || (ultra_got[76] && !ultimategamble)))
		{
			maxSpeed += 0.4;
			accuracy = 1;
			standartAccuracy = accuracy;
		}
		if skill_got[19] {
			scrApplyEagleEyes();
		}
		if race == 16
		{
			armour = min(armour + 1, maxarmour);	
		}
	}
	UberCont.crown_start[UberCont.racepick] = cs;
	instance_destroy(id,false);
}