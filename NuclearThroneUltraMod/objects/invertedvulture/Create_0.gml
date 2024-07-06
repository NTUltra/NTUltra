event_inherited()
maxhealth = 10;
raddrop = 13;
EnemyHealthAdjustments();

spr_idle = sprInvertedVultureIdle
spr_eat = sprInvertedVultureEat;
spr_walk = sprInvertedVultureWalk
spr_hurt = sprInvertedVultureHurt
spr_dead = sprInvertedVultureDead


//behavior
projectileSpeed = 5.2;
projectileSpeed += 0.2 + clamp(GetPlayerLoops()*0.5,0,2);
alarm[2] = 1;

gunSpr = sprInvertedVultureGun;
fuckyou = false;
if GetPlayerLoops() > 9
{
	gunSpr = sprInvertedVultureBazooka;
	fuckyou = true;
}
actTime = 16;
eatTime = 10;
maxSpeed = 4;