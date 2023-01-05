raddrop = 4
maxhealth = 3
meleedamage = 3
size = 1

event_inherited()
droprate = 4;

spr_idle = sprGraveyardSkeletonIdle
spr_walk = sprGraveyardSkeletonWalk
spr_hurt = sprGraveyardSkeletonHurt
spr_dead = sprGraveyardSkeletonDead


snd_hurt = sndMutant19Hurt
snd_melee = sndRatMelee

image_speed = 0.6;

//behavior
walk = 0
alarm[1] = 30+random(90)
maxSpeed = 4.65;
actTime = 9;
loops = GetPlayerLoops();
if loops > 1
{
	maxSpeed = 5.1;
	actTime = 7;
}