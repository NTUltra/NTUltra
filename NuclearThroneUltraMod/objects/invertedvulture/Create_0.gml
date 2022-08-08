event_inherited()
maxhealth = 10;
raddrop = 15;
EnemyHealthAdjustments();

spr_idle = sprInvertedVultureIdle
spr_eat = sprInvertedVultureEat;
spr_walk = sprInvertedVultureWalk
spr_hurt = sprInvertedVultureHurt
spr_dead = sprInvertedVultureDead


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

corpseTarget = -1;
projectileSpeed = 5.4;
projectileSpeed += clamp(GetPlayerLoops()*0.5,0,2);
alarm[2] = 1;

gunSpr = sprInvertedVultureGun;
fuckyou = false;
if GetPlayerLoops() > 9
{
	gunSpr = sprInvertedVultureBazooka;
	fuckyou = true;
}
actTime = 10;
eatTime = 10;
maxSpeed = 4;