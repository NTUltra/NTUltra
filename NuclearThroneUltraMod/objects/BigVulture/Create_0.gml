raddrop = 120
maxhealth = 160
scrBossHealthBuff();
meleedamage = 0
mySize = 1

event_inherited()
isInverted = false;
gunangle1 = 0;
gunangle2 = 0;
fireRate2 = 2;
shooting2 = 0;
chargeSpeed = 2.85;
maxChargeSpeed = 12;

maxChargeSpeed += clamp(GetPlayerLoops(),0,3)*0.5;
maxSpeed = 3;
//behavior
walk = 0
wkick = 0

corpseTarget = -1;
projectileSpeed = 7;
projectileSpeed += clamp(GetPlayerLoops(),0,3)*0.5;

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
if target > 0
	direction = point_direction(x,y,target.x,target.y);
else
	direction = random(360);
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

if UberCont.opt_gamemode != 25
	existTime = 40;

scrAddDrops(2);