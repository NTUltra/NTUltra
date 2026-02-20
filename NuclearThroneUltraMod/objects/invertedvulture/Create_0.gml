event_inherited()
maxhealth = 11;
raddrop = 13;
EnemyHealthAdjustments();

spr_idle = sprInvertedVultureIdle
spr_eat = sprInvertedVultureEat;
spr_walk = sprInvertedVultureWalk
spr_hurt = sprInvertedVultureHurt
spr_dead = sprInvertedVultureDead


//behavior
projectileSpeed = 5;
projectileSpeed += 0.2 + clamp(GetPlayerLoops()*0.5,0,2);
alarm[2] = 1;

gunSpr = sprInvertedVultureGun;
fuckyou = false;
if loops > 9
{
	gunSpr = sprInvertedVultureBazooka;
	fuckyou = true;
}
actTime = 17;
if loops > 0
	actTime -= 5;
range += 50;
eatTime = 10;
maxSpeed = 4;