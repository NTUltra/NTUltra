raddrop = 70
maxhealth = 880
if UberCont.opt_gamemode == 34
	maxhealth += 50;
meleedamage = 10
size = 6;

event_inherited()
alarm[10] = 0;
spr_idle = sprNothing2Idle
spr_walk = sprNothing2Idle
spr_hurt = sprNothing2Hurt
spr_dead = sprNothing2Death

snd_hurt = sndNothing2Hurt
snd_dead = sndNothing2DeadStart
snd_melee = sndGoldScorpionMelee;

//behavior
alarm[1] = 30;
//insomnia start slower
if instance_exists(Player)
{
	if Player.skill_got[29]//insomnia
	{
		alarm[1] += 110;
		with instance_create(x,y,Snooze)
		{
			owner = other.id;
			depth = other.depth - 1;
			yoffset = 0;
		}
	}
}
isInverted = false;
rotationSpeed = choose(2,-2);
speedUp = 4;
minDistanceToTarget = 150;
maxDistanceToTarget = 170;
distanceToTarget = maxDistanceToTarget;
maxAmmo = 3;
ammo = maxAmmo;
crossMaxAmmo = 20;
crossAmmo = 0;
crossAmount = 8;
crossPspeed =  6;

fireRate = 10;
lp = 0.05;//0.2
pSpeedAccurate = 4;
fireOffset = 40;
image_xscale = 1;
actTime = 20;
scrTarget();
angle = random(360);
loops = GetPlayerLoops();
if loops > 2
{
	rotationSpeed *= 1.1;
	fireRate -= 1
	crossPspeed += 1;
}
if loops > 3
{
	crossAmount ++;
	pSpeedAccurate += 0.5;
}
if loops > 4
{
	crossAmount ++;
	rotationSpeed *= 1.1;
	fireRate -= 2;
	maxAmmo ++;
}
if loops > 5
{
	actTime -= 5;
	pSpeedAccurate += 0.5;
}

if target > 0
	angle = point_direction(target.x,target.y,x,y);
	
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
	instance_create(x,y,DramaCamera);
}
// isHard = false; Hard mode to skip loop?