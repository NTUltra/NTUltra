//UNLOCK EASY MODE
debug("Goodbye");
if area=1 && subarea=1 && loops=0 && visible && my_health < 1
scrUnlockGameMode(9,"FOR DYING ON 1-1#YOU DID THAT ON PURPOSE")
audio_stop_sound(sndFishRollUpgLoop);
if scrCheckLoopAll()
	scrUnlockCSkin(1,"FOR LOOPING WITH EVERY CHARACTER",0);

if scrIsGamemode(8)
{
	with VanFan
	{
		time_microseconds=UberCont.time_microseconds;
		time_seconds=UberCont.time_seconds;
		time_minutes=UberCont.time_minutes;
		time_hours=UberCont.time_hours;
		time_frame = UberCont.time_frame;
		txttime = UberCont.minutesstring+":"+UberCont.secondsstring+":"+UberCont.microseconds;
		if (other.race == 22 && (time_seconds >= 30 || time_minutes >= 1 || time_hours >= 1))
			scrUnlockBSkin(22,"FOR SURVIVING THE VANS!#FOR ATLEAST 30 SECONDS",8);
	}
}
if skill_got[18] && visible && my_health < 1//Last wish
{
with UberCont
lastwishused=true;
}

with CrystalShield
instance_destroy();
var actualLives = skeletonlives;
if ultra_got[87] && altUltra
{
	actualLives += rogueammo;
}
audio_stop_sound(sndHorrorLoop);
audio_stop_sound(sndHorrorLoopTB);
if actualLives < 1 && !reincarnate && visible && my_health < 1
{
	with MusCont
	{
	if audio_exists(song)
	audio_stop_sound(song);
	}
	if race == 3 && bskin == 6
	{
		with instance_create(x,y,PortalEnviromentReplacer)
		{
			area = 137;
			prevArea = 137;
			maxRadius = 400;
		}
		with TopDecal
			instance_destroy();
		with Bones
			instance_destroy();
		__background_set_colour( make_color_rgb(0,0,0) )
		instance_create(x,y,VoidDeath);
		speed = 0;
		BackCont.shake += 100;
	}
}

if ultra_got[40]==1 && visible && my_health < 1
{
//REBEL DEFENCE PASSIVE
var ang = random(360)
{
repeat(28)
{
with instance_create(x,y,AllyBullet)
{
motion_add(ang,4)
image_angle = direction
team = other.team
}
ang += 360/28
}
}
}

if bskin=2 && race = 12 && visible && my_health < 1
{
with instance_create(x,y,YungCuzCap)
{
motion_add(random(360),2+random(8) );
}

}
if race == 17 && bskin == 0 && visible && my_health < 1
{
	snd_play(sndPillarBreak);
	repeat(3)
	{
		with instance_create(x,y,Dust) {
			motion_add(random(360),1);	
		}
	}
}
if race = 18 && visible && my_health < 1
{

repeat(13 )
    {with instance_create(x+random(16)-8,y+random(16)-8,Feather)
    motion_add(random(360),5+random(10) );}

}
if race == 25 && visible && my_health < 1
{
	repeat(13)
	{
		with instance_create(x+random(16)-8,y+random(16)-8,RavenFeather)
		{
			image_index = 1;
		}
	}
}

if race = 11 && visible && my_health < 1
{
	instance_create(x,y,Explosion);
}
if race == 24 && visible && my_health < 1
{
	snd_play(sndSpark1,0);
	snd_play(sndRoll,0);
	var ang = random(360);
	repeat(3)
	{
		with instance_create(x,y,Lightning)
		{image_angle = ang;
			team = other.team
			ammo = 8;
		event_perform(ev_alarm,0)
		with instance_create(x,y,LightningSpawn)
		image_angle = other.image_angle}
		with instance_create(x,y,Flame)
		{
			motion_add(ang+30,6)
			team = other.team
		}
		with instance_create(x,y,IceFlame)
		{
			motion_add(ang+90,6)
			team = other.team
		}
		with instance_create(x,y,FishBoost)
		{
			motion_add(ang+60,5);
		}
		with instance_create(x,y,Tentacle)
		{
			image_angle = ang + 60;
			creator=other.id;
			team = other.team
			ammo = 9
			event_perform(ev_alarm,0)
			visible = 0
			with instance_create(x,y,LightningSpawn)
			{
			sprite_index=sprTentacleSpawn
			image_angle = other.image_angle
			}
		}
		ang += 120;
	}
}
if visible && my_health < 1
{
	myCorpse = instance_create(x,y,MovingCorpseDynamic)
	with myCorpse
	{
		mySize = 1
		mask_index = other.mask_index
		motion_add(other.direction,other.speed)
		speed += max(0,-other.my_health/5)
		sprite_index = other.spr_dead
		image_xscale = other.right
		if speed > 16
		speed = 16
		if other.race = 4
		{
		p = other.p
		with instance_create(x,y,MeltDead)
		{
		p= other.p
		creator = other.id
		}
		}
	}
}

audio_stop_sound(sndEyesLoop)
audio_stop_sound(sndEyesLoopUpg)
audio_stop_sound(sndChickenLoop)
audio_stop_sound(sndChickenHeadlessLoop)

with PlayerAlarms
	instance_destroy();
with PlayerAlarms2
	instance_destroy();
with PlayerAlarms3
	instance_destroy();
if visible && my_health < 1
	with instance_create(x,y,PlayerDead)
	{
		snd_dead = other.snd_dead;
		alarm[0] = 2;
	}
if wep > 0 && !reincarnate && !(ultra_got[87] && altUltra && rogueammo > 0) && visible && my_health < 1
	with instance_create(x,y,WepPickupForOneWepOnly)
	{
		scrWeapons()
		wep = other.wep
		ammo = 50
		curse = other.curse
		isPermanent = other.isPermanent;
		hasBeenEaten = other.hasBeenEaten;
		name = wep_name[wep]
		type = wep_type[wep]
		pickedup = true;
		sprite_index = wep_sprt[wep]
		motion_add(other.direction,other.speed)
		speed += max(0,-other.my_health/5)
		motion_add(random(360),2)
		speed *= 0.8
		wepmod1 = other.wepmod1;
		wepmod2 = other.wepmod2;
		wepmod3 = other.wepmod3;
		wepmod4 = other.wepmod4;
	}

if bwep > 0 && !reincarnate && !(ultra_got[87] && altUltra && rogueammo > 0) && visible && my_health < 1
{
	with instance_create(x,y,WepPickupForOneWepOnly)
	{
		scrWeapons()
		wep = other.bwep
		ammo = 50
		curse = other.bcurse
		pickedup = true;
		isPermanent = other.isPermanentB;
		hasBeenEaten = other.hasBeenEatenB;
		name = wep_name[wep]
		type = wep_type[wep]
		sprite_index = wep_sprt[wep]
		motion_add(other.direction,other.speed)
		speed += max(0,-other.my_health/5)
		motion_add(random(360),2)
		speed *= 0.8
		wepmod1 = other.bwepmod1;
		wepmod2 = other.bwepmod2;
		wepmod3 = other.bwepmod3;
		wepmod4 = other.bwepmod4;
	}
}
if cwep > 0 && !reincarnate && !(ultra_got[87] && altUltra && rogueammo > 0) && visible && my_health < 1
{
	with instance_create(x,y,WepPickupForOneWepOnly)
	{
		scrWeapons()
		wep = other.cwep
		ammo = 50
		curse = other.ccurse
		isPermanent = other.isPermanentC;
		hasBeenEaten = other.hasBeenEatenC;
		name = wep_name[wep]
		type = wep_type[wep]
		sprite_index = wep_sprt[wep]
		motion_add(other.direction,other.speed)
		speed += max(0,-other.my_health/5)
		motion_add(random(360),2)
		speed *= 0.8
		wepmod1 = other.cwepmod1;
		wepmod2 = other.cwepmod2;
		wepmod3 = other.cwepmod3;
		wepmod4 = other.cwepmod4;
	}
}
if race == 23 && visible && my_health < 1//Frog explode!
{
	repeat(40)
	instance_create(x,y,ToxicThrowerGas)

	snd_play(sndToxicBarrelGas)

	dir = random(360)
	repeat(20)
	{
	dir += 360/20
	with instance_create(x,y,EnemyBullet2)
	{
	motion_add(other.dir,4)
	image_angle = direction
	team = other.team
	}
	with instance_create(x,y,AcidStreak)
	{
	motion_add(other.dir,8)
	image_angle = direction
	}
	}
	snd_play(sndFrogExplode)

	BackCont.shake += 20	
}
if race=15 && visible && my_health < 1
{
Sleep(20)
with instance_create(x,y,PlasmaImpact)
{
	team = other.team;	
}
snd_play_2d(sndExplosionXL);
//repeat(20)
//instance_create(x+random(50)-25,y+random(50)-25,IonImpact)
}


//Crown of death
if scrIsCrown(3) && visible && my_health < 1
{
	instance_create(x,y,CrownOfDeathBoom);
}
if actualLives>0 && !reincarnate && visible && my_health < 1
{
instance_create(x,y,WallBreak);
with projectile
{
	if team!=other.team
		instance_destroy();
}
if visible && my_health < 1
with instance_create(x,y,PlayerSpawn)//Data to keep
{
	//alarm[3]=300;//immunity
	wep = other.wep;
	canblacksword = other.canblacksword;
	ammo = other.ammo;
	ultra_got = array_create(array_length(other.ultra_got),false);
	altUltra = false;
	chickenFocusMax = other.chickenFocusMax;
	chickenFocus = chickenFocusMax;
	chickenFocusDelay = other.chickenFocusDelay;
	chickenFocusDelayTime = 0;
	chickenFocusInUse = false;
	rnglevelloop = other.rnglevelloop;
	firedthislevel = false;
	firedOnce = false;
	seconds = other.seconds;
	microseconds = other.microseconds;
	screenshake400 = other.screenshake400;
	weaponspickedup = other.weaponspickedup;
	onlyusemerevolver = other.onlyusemerevolver;
	ultramod = other.ultramod;
	ultimategamble=true;
	var si= 0;
	livesRegain = other.livesRegain;
	var al = array_length(livesRegain);
	var tookLife = false;
	race = other.race
	copyPassive = other.copyPassive;
	crown = other.crown
	lastarea = other.lastarea;
	lastsubarea = other.lastsubarea;
	area = other.area//other.lastarea;
	subarea=other.subarea;
	loops = other.loops;
	hard = other.hard;
	kills = other.kills;
	myCorpse = other.myCorpse;
	level = max(other.boostLevel,other.level);
	inverted = other.inverted;
	crownvisits = other.crownvisits;
	gunGameKill = other.gunGameKill;
	canCrownOfProtection = other.canCrownOfProtection;
	//gotMinimumArmour = other.gotMinimumArmour;
	freeArmourStrike = other.freeArmourStrike;
	if other.ultra_got[87] && other.altUltra && other.rogueammo > 0
	{
		skeletonlives = other.skeletonlives
		freakRespawn = true;
		skill_got = other.skill_got;
		ultra_got = other.ultra_got;
		level = other.level;
		rad = other.rad;
		altUltra = other.altUltra;
		disableAltUltra = other.disableAltUltra;
		rogueammo = other.rogueammo-1;
		rogueammomax = other.rogueammomax;
		typ_ammo = other.typ_ammo;
		wep_name = other.wep_name;
		wep_type = other.wep_type;
		wep_auto = other.wep_auto;
		wep_load = other.wep_load;
		wep_cost = other.wep_cost;
		wep_sprt = other.wep_sprt;
		wep_area = other.wep_area;
		wep_text = other.wep_text;
		wep_swap = other.wep_swap;
		wep_rad	 = other.wep_rad;
		typ_amax = other.typ_amax;
		maxhealth = other.maxhealth;
		humphrySkill = other.humphrySkill;
		ultimategamble = other.ultimategamble;
		bettermelee = other.bettermelee;;
		betterlaserbrain = other.betterlaserbrain;
		betterpluto = other.betterpluto;
		betterrabbitpaw = other.betterrabbitpaw;
		betterrecyclegland = other.betterrecyclegland;
		betterboltmarrow = other.betterboltmarrow;
		betterTail = other.betterTail;
		accuracy = other.accuracy;
		standartAccuracy = other.standartAccuracy;
		invertedchance = other.invertedchance;
		hard = other.hard;
		maxSpeed = other.maxSpeed;
		hammerheadcounter = other.hammerheadcounter;
		lag = other.lag;
		visitedCrib = other.visitedCrib;
		meltingd = other.meltingd;
		heavyheart = other.heavyheart;
		freeArmourStrike = other.freeArmourStrike;
		armour = other.armour;
		maxarmour = other.maxarmour;
		randomlySelected = other.randomlySelected;
		reachedUltra = other.reachedUltra;
		tookDestiny = other.tookDestiny;
		pSpeedBoost = other.pSpeedBoost;
		inverted = other.inverted;
		cash = other.cash;
		lstCash = other.lstCash;
		maxCash = other.maxCash;
		canHeal = other.canHeal;
		horrorEtaken = other.horrorEtaken;
		hogpoints = other.hogpoints;
		usedHogInvestment = other.usedHogInvestment;
		raddrop = other.raddrop;
		ultramod = other.ultramod;
		skillsChosen = other.skillsChosen;
		livesRegain = other.livesRegain;
		patience = other.patience;
		skillpoints = other.skillpoints;
		rage = other.rage;
		strongspirit = other.strongspirit;
		strongspiritused = other.strongspiritused;
		lastWishPrevent = other.lastWishPrevent;
		isAlkaline = other.isAlkaline;
		crown = other.crown;
		wep = other.wep;
		bwep = other.bwep;
		cwep = other.cwep;
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
		bskin = other.bskin;
		spr_idle=other.spr_idle;
		spr_walk=other.spr_walk;
		spr_hurt=other.spr_hurt;
		spr_dead=other.spr_dead;
		instance_create(x,y,ReviveRogue);
		alarm[0] = 30;
		//Purity
		if scrIsCrown(29)
		{
			var wantHealth = 0
			if wepmod1 != 0
				wantHealth += 1;
			if wepmod2 != 0 
				wantHealth += 1;
			if wepmod3 != 0
				wantHealth += 1;
			if wepmod4 != 0
				wantHealth += 1;
			maxhealth -= wantHealth;
		}
	}
	else
	{
		skeletonlives = other.skeletonlives-1;
		repeat(al)
		{
			if !tookLife && livesRegain[si] > 2
			{
				livesRegain[si] = 0;
				tookLife = true;
			}
			si++;
		}
		alarm[0] = 50;
		alarm[1] = 5;
		alarm[2] = 3;
	}
}

}
else if !reincarnate && actualLives < 1 && !instance_exists(UltraIcon)
{
	if instance_number(Player) == 1
	{
		with Crown
			instance_destroy();
			
		scrEndOfRun();
		//Horror and atom bskin drop rads
		if race == 21 || (race == 15 && bskin = 1)
		{
			raddrop = rad;
			scrRaddrop();
		}
		//SAVE STUFF
		if instance_exists(BackCont)
		{
			BackCont.kills = kills
			BackCont.area = area
			BackCont.subarea = subarea
			BackCont.hard = hard
			BackCont.loops = loops
			if my_health <= 0 && visible
				with GameRender
				{
					gameoverText = scrDecideGameoverText();
				}
		}

		with UberCont
		{
			var actualKills = other.kills - loadedKills;
			var actualLoops = other.loops - loadedLoops;
			ctot_kill[other.race] += actualKills
			//ctot_time[other.race]+=time;
			if other.my_health<1 && other.armour < 1 && other.visible
				ctot_dead[other.race] += 1

			ctot_played[other.race] += 1;

			ctot_loop[other.race] += actualLoops;

			//best kills
			if other.kills > cbst_kill[other.race]
				cbst_kill[other.race] = other.kills

			//best difficulty
			if other.hard>cbst_diff[other.race]
				cbst_diff[other.race]=other.hard

			//best loops
			if other.loops> cbst_loop[other.race]
				cbst_loop[other.race]=other.loops

			if other.randomlySelected
			{
				ctot_kill[0]+=actualKills
				//ctot_time[other.race]+=time;
				if other.my_health<1 && other.armour < 1 && other.visible
					ctot_dead[0] += 1
	
				ctot_played[0] += 1;
	
				ctot_loop[0]+=actualLoops;

				//best kills
				if other.kills > cbst_kill[0]
					cbst_kill[0] = other.kills

				//best difficulty
				if other.hard>cbst_diff[0]
					cbst_diff[0]=other.hard

				//best loops
				if other.loops> cbst_loop[0]
					cbst_loop[0]=other.loops
			}

			var playedWithAll = true;
			for (var i = 1; i <= racemax; i++) {
				// code here
				if !ctot_played[i]
				{
					playedWithAll = false;
					i = racemax + 1;
				}
			}
			if (playedWithAll)
			{
				scrUnlockGameMode(23,"UNLOCKED FOR PLAYING#EVERY CHARACTER");
			}
		
			//DAILY RUN
			if actualLives < 1 && !other.reincarnate && instance_number(Player) == 1
			{
				scrUpdateScore(other);
			}
			scrSave();
		}
		
		//Lets unlock some shit
		if my_health<=0 && visible
			scrUnlockCharacter(4,"FOR DYING");//MELTING

		if race == 4 && area == 6 && my_health < 1 && visible//SKELETON
			scrUnlockCharacter(19,"FOR DYING IN THE LABS AS MELTING");

		if UberCont.ctot_kill[race]>=100//UNLOCK PLANT
			scrUnlockCharacter(5,"FOR GETTING OVER 100 KILLS");

		if kills>=2000 && race = 5
			scrUnlockCSkin(5,"FOR GETTING 2.000 KILLS#IN ONE RUN AS PLANT",0);
		
		scrCreateDataRef();
		with GameRender
		{
			alarm[2] = 1;	
		}
	}
	
}
with KeyCont {
	key_fire[0] = 2;
	key_spec[0] = 2;
}
