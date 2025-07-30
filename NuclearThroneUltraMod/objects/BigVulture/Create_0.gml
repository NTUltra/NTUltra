raddrop = 100
maxhealth = 160
loops = GetPlayerLoops();
if loops > 0
	maxhealth += 50;
scrBossHealthBuff();
meleedamage = 0
mySize = 1

event_inherited();
isBoss = true;
isInverted = false;
ignoreOverlap = true;
gunangle1 = 0;
gunangle2 = 0;
fireRate2 = 2;
shooting2 = 0;
chargeSpeed = 2.85;
maxChargeSpeed = 12;
actTime = 10;
maxChargeSpeed += clamp(loops,0,3)*0.5;
maxSpeed = 3;
//behavior
walk = 0
wkick = 0
actTime -= min(4,loops);
corpseTarget = noone;
projectileSpeed = 6.75;
projectileSpeed += clamp(loops,0,4);

alarm[1] = 40;
alarm[2] = 1;
alarm[6] = 10;//Intro

spr_idle = sprBigVultureIdle;
spr_walk = sprBigVultureWalk;
spr_hurt = sprBigVultureHurt;
spr_eat = sprBigVultureEat;
spr_dead = sprBigVultureDead

snd_hurt = sndBigVultureHurt
snd_dead = sndBigVultureDeath

scrTarget();
if target != noone
	direction = point_direction(x,y,target.x,target.y);
else
	direction = random(360);
chargeDirection = direction;
gunangle = direction;
speed = 1;
if hspeed > 0
	right = 1
else if hspeed < 0
	right = -1
speed = 0;

var d = 16;
instance_create(x,y-d,WallBreak);
instance_create(x,y+d,WallBreak);
instance_create(x-d,y,WallBreak);
instance_create(x+d,y,WallBreak);
instance_create(x+d,y+d,WallBreak);
instance_create(x+d,y-d,WallBreak);
instance_create(x-d,y+d,WallBreak);
instance_create(x-d,y-d,WallBreak);

ammo = 0;
maxAmmo = 6;
fireRate = 2;
shooting = 0;
if loops > 0
{
	fireRate = 1;
	maxAmmo += 3;
}
if !scrIsGamemode(25)
	existTime = 40;

scrAddDrops(2);

