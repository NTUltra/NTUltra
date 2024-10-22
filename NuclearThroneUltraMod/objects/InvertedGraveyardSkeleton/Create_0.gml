
mySize = 1

event_inherited()

raddrop = 2
maxhealth = 1
if loops > 0
	maxhealth = 3;
else
	raddrop = 0;
EnemyHealthAdjustments();
meleedamage = 3
droprate = 1;

spr_idle = sprInvertedGraveyardSkeletonIdle
spr_walk = sprInvertedGraveyardSkeletonWalk
spr_hurt = sprInvertedGraveyardSkeletonHurt
spr_dead = sprInvertedGraveyardSkeletonDead


alarm[3] = 0; //Not cursed
//behavior
walk = 0
alarm[1] = 35+random(90)
maxSpeed = 4.1;
actTime = 10;
if loops > 1
{
	maxSpeed = 5.4;
	actTime = 4;
} else if loops > 0
{
	maxSpeed = 5;
	actTime = 7;
}