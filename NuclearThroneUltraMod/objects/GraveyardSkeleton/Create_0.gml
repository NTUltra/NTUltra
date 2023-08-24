raddrop = 4
maxhealth = 2;
meleedamage = 3
mySize = 1
loops = GetPlayerLoops();
if loops > 0
{
	maxhealth = 3;
}
event_inherited()
droprate = 4;

spr_idle = sprGraveyardSkeletonIdle
spr_walk = sprGraveyardSkeletonWalk
spr_hurt = sprGraveyardSkeletonHurt
spr_dead = sprGraveyardSkeletonDead


snd_hurt = sndMutant19Hurt
snd_melee = sndRatMelee

image_speed = 0.4;

//behavior
walk = 0
alarm[1] = 30+random(90)
alarm[3] = 10 + irandom(10);
maxSpeed = 3.8;//4.6
actTime = 12;//9
if loops > 0
{
	image_speed = 0.6;
	maxSpeed = 4.65;
	actTime = 9;
}
if loops > 1
{
	maxSpeed = 5.1;
	actTime = 7;
}