/// @description Line of fire
snd_play(sndSniperFire)
wkick = 7
with instance_create(x,y,EnemyLineFrostFire)
{
	direction = other.gunangle
	image_angle = direction
	team = other.team
}
alarm[1] = 20+random(5)
gonnafire = 0