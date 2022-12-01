raddrop = 50
maxhealth = 370
scrBossHealthBuff();
meleedamage = 5
size = 6;

event_inherited()
alarm[10] = 0;
spr_idle = sprBigBadBatIdle
spr_walk = sprBigBadBatIdle
spr_hurt = sprBigBadBatHurt
spr_dead = sprBigBadBatDead
spr_fire = sprBigBadBatFire;

snd_hurt = sndHitFlesh
snd_dead = sndFrogExplode
snd_melee = sndGoldScorpionMelee;

lowHealthReached = false;
//behavior
alarm[1] = 30;
rotationSpeed = choose(1.8,-1.8);
speedUp = 4;
minDistanceToTarget = 90;
maxDistanceToTarget = 132;
distanceToTarget = maxDistanceToTarget;
maxAmmo = 3;
ammo = maxAmmo;
fireRate = 8;
lp = 0.15;
spinAttackDuration = 40;
spinAttackDistance = 72;
pSpeedAccurate = 3;
pSpeedSpinny = 3;
pSpeedJawbreaker = 4.5;
fireOffset = 40;
laserDuration = 80;
laserOffset = 36;
myLasers = [];
ticksBeforeSpiral = 2;
image_xscale = 1;
actTime = 14;
scrTarget();
angle = random(360);
myBat = SquareBat;
loops = GetPlayerLoops();
if loops > 2
{
	rotationSpeed *= 1.1;
}
if loops > 4
{
	rotationSpeed *= 1.1;
}
if target > 0
	angle = point_direction(target.x,target.y,x,y);

//get into position
alarm[6] = 60;
emitter = audio_emitter_create();
audio_emitter_gain(emitter, 0.8);
audio_emitter_falloff(emitter, 50, 400, 1);

wkick = 0;
instance_create(x,y,BigWallBreak);
if instance_exists(Player) && Player.area != 103
{
	instance_create(x,y,DramaCamera);
}
