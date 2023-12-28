raddrop = 70
maxhealth = 1200
loops = GetPlayerLoops();
if scrIsHardMode()
	maxhealth += 100;
maxhealth += max(0,80*min(12,(loops-1)));
scrBossHealthBuff();
meleedamage = 10
mySize = 6;

event_inherited()
depth -= 1;
alarm[10] = 0;
spr_idle = sprNothing2Idle
spr_walk = sprNothing2Idle
spr_hurt = sprNothing2Hurt
spr_dead = sprNothing2Death

snd_hurt = sndNothing2Hurt
snd_dead = sndNothing2DeadStart
snd_melee = sndGoldScorpionMelee;

//behavior
alarm[1] = 10;
//insomnia start slower
if instance_exists(Player)
{
	if Player.skill_got[29]//insomnia
	{
		alarm[1] += 50;
		scrGiveSnooze(0);
	}
}
isInverted = false;
rotationSpeed = choose(2,-2);
speedUp = 4;
minDistanceToTarget = 120//150;
maxDistanceToTarget = 180;
distanceToTarget = maxDistanceToTarget;
maxAmmo = 3;
ammo = maxAmmo;
crossMaxAmmo = 20;
crossAmmo = 0;
crossAmount = 8;
crossPspeed =  7;

fireRate = 10;
lp = 0.05;//0.2
pSpeedAccurate = 4.5;
image_xscale = 1;
actTime = 17;
scrTarget();
onFloorFail = 0;
if instance_exists(Player) && Player.area == 100
	loops = 0;
if loops > 0
{
	actTime -= 3;
	crossPspeed += 1;
	actTime -= 1;
}
if loops > 2
{
	actTime -= 1;
	rotationSpeed *= 1.1;
	fireRate -= 1
	crossPspeed += 1;
	pSpeedAccurate += 0.5;
}
if loops > 3
{
	actTime -= 1;
	crossAmount ++;
	pSpeedAccurate += 0.5;
	maxAmmo ++;
}
if loops > 4
{
	actTime -= 1;
	crossAmount ++;
	rotationSpeed *= 1.1;
	fireRate -= 2;
	maxAmmo ++;
}
if loops > 5
{
	actTime -= 3;// thats 9
	pSpeedAccurate += 0.5;
}
if loops > 6
{
	maxAmmo ++;	
}
if target != noone
	angle = point_direction(target.x,target.y,x,y);
else
	angle = random(360);
crossAngleStep = 360/crossAmount;
//get into position
alarm[6] = 60;
emitter = audio_emitter_create();
audio_emitter_gain(emitter, 0.8);
audio_emitter_falloff(emitter, 50, 400, 1);

reachedHalfHP = false;
sndtaunt = 0
tauntdelay = 0
instance_create(x,y,BigWallBreak);
if instance_exists(Player)
{
	if Player.area == 120 || Player.area == 119
		instance_create(x,y,DramaCamera);
	else
	{
		with MusCont
		{
			audio_stop_sound(song);
			song = musChimera2;
			snd_loop(song)
			audio_group_set_gain(agsfx,max(0, UberCont.opt_sfxvol),0);
		    audio_sound_gain(song,max(0,UberCont.opt_musvol),0);
		    audio_sound_gain(amb,max(0,UberCont.opt_ambvol),0);
		}
	}
}
// isHard = false; Hard mode to skip loop?