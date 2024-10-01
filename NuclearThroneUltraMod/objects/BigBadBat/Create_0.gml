raddrop = 50
maxhealth = 440
loops = GetPlayerLoops();

if loops > 0
	maxhealth = 480
scrBossHealthBuff();
mySize = 6;

event_inherited();
meleedamage = 5

alarm[10] = 0;
spr_idle = sprBigBadBatIdle
spr_walk = sprBigBadBatIdle
spr_hurt = sprBigBadBatHurt
spr_dead = sprBigBadBatDead
spr_fire = sprBigBadBatFire;
spr_chrg = spr_fire

snd_hurt = sndHitFlesh
snd_dead = sndFrogExplode
snd_melee = sndGoldScorpionMelee;

lowHealthReached = false;
//behavior
alarm[1] = 30;
rotationSpeed = choose(1.8,-1.8);
speedUp = 4;
minDistanceToTarget = 80;
maxDistanceToTarget = 130;
forceDistanceToggle = false;
distanceToTarget = maxDistanceToTarget;
maxAmmo = 3;
ammo = maxAmmo;
fireRate = 8;
lp = 0.15;
spinAttackDuration = 40;
spinAttackDistance = 72;
pSpeedAccurate = 2.9;
pSpeedSpinny = 2.8;
pSpeedJawbreaker = 4;
fireOffset = 40;
laserDuration = 60;
laserOffset = 36;
myLasers = [];
ticksBeforeSpiral = 2;
image_xscale = 1;
actTime = 20;
scrTarget();
angle = random(360);
myBat = SquareBat;
reachHalfHealth = false;
if loops > 0
{
	actTime -= 5;
	laserDuration -= 5;
	pSpeedAccurate += 0.3;
	pSpeedJawbreaker += 0.5;
	pSpeedSpinny += 0.2;
}
if loops > 2
{
	rotationSpeed *= 1.1;
}
if loops > 4
{
	laserDuration -= 5;
	rotationSpeed *= 1.1;
	pSpeedSpinny += 0.2;
}
if target != noone
	angle = point_direction(target.x,target.y,x,y);

//get into position
alarm[6] = 60;
emitter = audio_emitter_create();
audio_emitter_gain(emitter, 0.8);
audio_emitter_falloff(emitter, 50, 400, 1);

wkick = 0;
instance_create(x,y,BigWallBreak);

fireDelay = 0;
scrAddDrops(3);

if instance_exists(Player) && Player.skill_got[29] {
	alarm[1] += 90;
	alarm[6] += 90;
	scrGiveSnooze();
}
with BigBadBat
{
	if id != other.id
	{
		alarm[1] += 10;	
	}
}
alarm[7] = 10;