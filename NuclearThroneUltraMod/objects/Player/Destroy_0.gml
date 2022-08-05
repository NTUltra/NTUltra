//UNLOCK EASY MODE
if area=1 && subarea=1 && loops=0 && my_health <= 0
scrUnlockGameMode(9,"FOR DYING ON 1-1#YOU DID THAT ON PURPOSE")

if scrCheckLoopAll()
	scrUnlockCSkin(1,"FOR LOOPING WITH EVERY CHARACTER",0);

if !skill_got[18] && UberCont.lastwishused
{
	UberCont.lastwishused = false;
	//dir= instance_create(x,y-8,PopupText)
	//dir.mytext = "LAST WISH#CAN GIVE A LIFE AGAIN!";
}
if UberCont.opt_gamemode == 8
{
	with VanFan
	{
		time_microseconds=UberCont.time_microseconds;
		time_seconds=UberCont.time_seconds;
		time_minutes=UberCont.time_minutes;
		time_hours=UberCont.time_hours;
		txttime = UberCont.minutesstring+":"+UberCont.secondsstring+":"+UberCont.microseconds;
		if (other.race == 22 && (time_seconds >= 30 || time_minutes >= 1 || time_hours >= 1))
			scrUnlockBSkin(22,"FOR SURVIVING THE VANS!#FOR ATLEAST 30 SECONDS",8);
	}
}

if skill_got[18]//Last wish
{
with UberCont
lastwishused=true;
}

with Crown
instance_destroy();

with CrystalShield
instance_destroy();
var actualLives = skeletonlives;
if ultra_got[87] && altUltra
{
	actualLives += rogueammo;
}
if actualLives < 1
	with MusCont
	{
	if audio_exists(song)
	audio_stop_sound(song);
	}

if ultra_got[40]==1
{
//REBEL DEFENCE PASSIVE
ang = random(360)
{
repeat(28)
{
with instance_create(x,y,AllyBullet)
{
motion_add(other.ang,4)
image_angle = direction
team = other.team
}
ang += 360/28
}
}
}

if bskin=2 && race = 12
{
with instance_create(x,y,YungCuzCap)
{
motion_add(random(360),2+random(8) );
}

}

if race = 18
{

repeat(10+irandom(5) )
    {with instance_create(x+random(16)-8,y+random(16)-8,Feather)
    motion_add(random(360),5+random(10) );}

}

if race=11
{
instance_create(x,y,Explosion);
}

var playerCorpse = instance_create(x,y,Corpse)
with playerCorpse
{
size = 1
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

audio_stop_sound(sndEyesLoop)
audio_stop_sound(sndEyesLoopUpg)
audio_stop_sound(sndChickenLoop)
audio_stop_sound(sndChickenHeadlessLoop)

//CROWN OF DEATH
if crown = 3
{with enemy
{if x > __view_get( e__VW.XView, 0 ) and y > __view_get( e__VW.YView, 0 ) and x < __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ) and y < __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )
my_health = 0}}


with PlayerAlarms
{
	snd_dead = other.snd_dead;
	alarm[1] = 5;
}
if !reincarnate && !(ultra_got[87] && altUltra && rogueammo > 0)
	with instance_create(x,y,WepPickupForOneWepOnly)
	{
		scrWeapons()
		wep = other.wep
		ammo = 50
		curse = other.curse
		name = wep_name[wep]
		type = wep_type[wep]
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

if bwep > 0 && !reincarnate && !(ultra_got[87] && altUltra && rogueammo > 0)
{
	with instance_create(x,y,WepPickup)
	{
		scrWeapons()
		wep = other.bwep
		ammo = 50
		curse = other.bcurse
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
if cwep > 0 && !reincarnate && !(ultra_got[87] && altUltra && rogueammo > 0)
{
	with instance_create(x,y,WepPickup)
	{
		scrWeapons()
		wep = other.cwep
		ammo = 50
		curse = other.ccurse
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

if race=15
{
Sleep(20)
repeat(20)
instance_create(x+random(50)-25,y+random(50)-25,IonImpact)
}

if UberCont.opt_gamemode=4
instance_create(x,y,BigDogExplo);


//Crown of death
if crown == 3
{
	instance_create(x,y,CrownOfDeathBoom);
}
if actualLives>0 && !reincarnate
{
instance_create(x,y,WallBreak);

//blank armour sorta yea
with enemy{
if x > __view_get( e__VW.XView, 0 ) and x < __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ) and y > __view_get( e__VW.YView, 0 ) and y < __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )
{
//if sprite_index!=spr_hurt{
snd_play(other.snd_hurt, other.hurt_pitch_variation,true)
Sleep(20)
draw_rectangle_colour(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ),__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 ),c_white,c_white,c_white,c_white,false);
Sleep(20);

//move it
if place_free(x+lengthdir_x(4,point_direction(x,y,Player.x,Player.y)+180),y)
x += lengthdir_x(4,point_direction(x,y,Player.x,Player.y)+180)
if place_free(x,y+lengthdir_y(4,point_direction(x,y,Player.x,Player.y)+180))
y += lengthdir_y(4,point_direction(x,y,Player.x,Player.y)+180)

my_health -= 24;
sprite_index = spr_hurt
image_index = 0
//motion_add(other.direction,6)

//with instance_create(x,y,SharpTeeth)
//owner=other.id;
//}

motion_add(other.direction+180,10);
}}
with projectile
{
if team!=other.team
instance_destroy();
}

with instance_create(x,y,PlayerSpawn)//Data to keep
{
//alarm[3]=300;//immunity
lastsubarea = other.lastsubarea;
ultramod = other.ultramod;
ultimategamble=true;
skeletonlives = other.skeletonlives-1;
var si= 0;
livesRegain = other.livesRegain;
var al = array_length(livesRegain);
var tookLife = false;
repeat(al)
{
	if !tookLife && livesRegain[si] > 2
	{
		livesRegain[si] = 0;
		tookLife = true;
	}
	si++;
}
race = other.race
crown = 1//other.crown
lastarea = other.lastarea;
area = other.area//other.lastarea;
loops = other.loops;
hard = other.hard;
kills = other.kills;
subarea=other.subarea;
myCorpse = playerCorpse;
level = max(other.boostLevel,other.level);
inverted = other.inverted;

	if other.ultra_got[87] && other.altUltra && other.rogueammo > 0
	{
		skeletonlives += 1;
		freakRespawn = true;
		skill_got = other.skill_got;
		ultra_got = other.ultra_got;
		level = other.level;
		rad = other.rad;
		ammo = other.ammo;
		altUltra = other.altUltra;
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
		HumphrySkill = other.HumphrySkill;
		ultimategamble = other.ultimategamble;
		bettermelee = other.bettermelee;;
		betterlaserbrain = other.betterlaserbrain;
		betterpluto = other.betterpluto;
		betterrabbitpaw = other.betterrabbitpaw;
		betterrecyclegland = other.betterrecyclegland;
		betterboltmarrow = other.betterboltmarrow;
		accuracy = other.accuracy;
		standartAccuracy = other.standartAccuracy;
		invertedchance = other.invertedchance;
		crownvisits = other.crownvisits;
		hard = other.hard;
		maxspeed = other.maxspeed;
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
		isAlkaline = other.isAlkaline;
		crown = other.crown;
		wep = other.wep;
		bwep = other.wep;
		cwep = other.cwep;
		bskin = other.bskin;
		spr_idle=other.spr_idle;
		spr_walk=other.spr_walk;
		spr_hurt=other.spr_hurt;
		spr_dead=other.spr_dead;
		instance_create(x,y,ReviveRogue);
		alarm[0] = 30;
	}
	else
	{
		alarm[0]=60;
		alarm[1] = 5;
		alarm[2] = 3;
	}
}

}
else if !reincarnate
{
	scrEndOfRun();
	//Horror and atom bskin drop rads
	if race == 21 || (race == 15 && bskin = 1)
	{
		raddrop = rad;
		scrRaddrop();
	}
	if race == 23 //Frog explode!
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
	//SAVE STUFF
	if instance_exists(BackCont)
	{
		BackCont.kills = kills
		BackCont.area = area
		BackCont.subarea = subarea
		BackCont.hard = hard
		BackCont.loops = loops
		with TopCont
		{
			gameoverText = scrDecideGameoverText();	
		}
	}

	with UberCont
	{
	ctot_kill[other.race]+=other.kills
	//ctot_time[other.race]+=time;
	if other.my_health<1
	ctot_dead[other.race] += 1

	ctot_played[other.race] += 1;

	ctot_loop[other.race]+=other.loops;

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
		ctot_kill[0]+=other.kills
		//ctot_time[other.race]+=time;
		if other.my_health<1
		ctot_dead[0] += 1
	
		ctot_played[0] += 1;
	
		ctot_loop[0]+=other.loops;

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
		for (var i = 0; i <= racemax; i++) {
		    // code here
			if !ctot_played[i]
			{
				playedWithAll = false;
				i = racemax + 1;
			}
		}
		if (playedWithAll)
		{
			debug("UNLOCK ALL");
			scrUnlockGameMode(23,"UNLOCKED FOR PLAYING#EVERY CHARACTER");
		}
		
		//DAILY RUN
		if (opt_gamemode == 27)
		{
			encrypted_data.ctot_dailies_score_score[
			array_length(encrypted_data.ctot_dailies_score_score)-1] = other.kills;
			scrSaveEncrypted();
			useSeed = false;
			opt_gamemode = 0;
			canRestart = true;
		}
		if (opt_gamemode == 26)
		{
			scrSaveEncrypted();
			useSeed = false;
			opt_gamemode = 0;
		}
		
		scrSave();
	}


	//Lets unlock some shit
	if my_health<=0
	scrUnlockCharacter(4,"FOR DYING");//MELTING

	if race = 4 && area = 6//SKELETON
	scrUnlockCharacter(19,"FOR DYING IN THE LABS AS MELTING");

	if UberCont.ctot_kill[race]>=100//UNLOCK PLANT
	scrUnlockCharacter(5,"FOR GETTING OVER 100 KILLS");

	if kills>=2000 && race = 5
	scrUnlockCSkin(5,"FOR GETTING 2.000 KILLS#IN ONE RUN AS PLANT",0);
}
with KeyCont {
	key_fire[0] = 0;
	key_spec[0] = 0;
}