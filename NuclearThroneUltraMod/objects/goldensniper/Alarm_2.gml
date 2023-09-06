/// @description Line of fire
snd_play(sndSniperFire)
wkick = 7
with instance_create(x,y,EnemyLineFire)
{
	direction = other.gunangle
	image_angle = direction
	team = other.team
	maxRange = 300;
}
alarm[1] += actTime;

gonnafire = 0