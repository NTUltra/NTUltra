raddrop = 6
maxhealth = 14
meleedamage = 0
mySize = 1
loops = GetPlayerLoops();
if loops > 0
	maxhealth += 2;
event_inherited()

spr_idle = sprVultureIdle
spr_eat = sprVultureEat;
spr_walk = sprVultureWalk
spr_hurt = sprVultureHurt
spr_dead = sprVultureDead

snd_hurt = sndVultureHurt
snd_dead = sndVultureDeath

//behavior
walk = 0
direction = random(360);
gunangle = direction;
speed = 1;
if hspeed > 0
	right = 1
else if hspeed < 0
	right = -1
speed = 0;
alarm[1] = 30+random(90)
wkick = 0

actTime = 20;
eatTime = 20;
maxSpeed = 3;
corpseTarget = noone;
projectileSpeed = 5;
projectileSpeed += 0.1 + clamp(GetPlayerLoops()*0.5,0,2);
alarm[2] = 1;

gunSpr = sprVultureGun;
fuckyou = false;
if loops > 9
{
	gunSpr = sprVultureBazooka;
	fuckyou = true;
}
wasBehindWall = false;