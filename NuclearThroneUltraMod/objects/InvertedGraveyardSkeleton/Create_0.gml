
mySize = 1

event_inherited()

raddrop = 5
maxhealth = 1
meleedamage = 3
droprate = 3;

spr_idle = sprInvertedGraveyardSkeletonIdle
spr_walk = sprInvertedGraveyardSkeletonWalk
spr_hurt = sprInvertedGraveyardSkeletonHurt
spr_dead = sprInvertedGraveyardSkeletonDead


image_speed = 0.6;

//behavior
walk = 0
alarm[1] = 30+random(90)
maxSpeed = 5;
actTime = 7;
loops = GetPlayerLoops();
if loops > 1
{
	maxSpeed = 5.4;
	actTime = 4;
}