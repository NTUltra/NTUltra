raddrop = 50
maxhealth = 370
meleedamage = 5
size = 6;

event_inherited()
alarm[10] = 0;
spr_idle = sprNothing2Idle
spr_walk = sprNothing2Idle
spr_hurt = sprNothing2Hurt
spr_dead = sprNothing2Death
spr_fire = sprNothing2Idle;

snd_hurt = sndNothing2Hurt
snd_dead = sndNothing2DeadStart
snd_melee = sndGoldScorpionMelee;

//behavior
alarm[1] = 30;
rotationSpeed = choose(2,-2);
speedUp = 4;
minDistanceToTarget = 120;
maxDistanceToTarget = 148;
distanceToTarget = maxDistanceToTarget;
maxAmmo = 3;
ammo = maxAmmo;
fireRate = 8;
lp = 0.2;
pSpeedAccurate = 3;
pSpeedSpinny = 3;
pSpeedJawbreaker = 4.5;
fireOffset = 40;
ticksBeforeSpiral = 2;
image_xscale = 1;
actTime = 14;
scrTarget();
angle = random(360);
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

wkick = 0;
instance_create(x,y,BigWallBreak);
if instance_exists(Player)
{
	instance_create(x,y,DramaCamera);
}
