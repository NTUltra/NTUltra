/// @description ultra fire
snd_play(sndSniperFire)
wkick = 7
with instance_create(x,y,EnemyUltraLine)
{
	direction = other.gunangle
	image_angle = direction
	team = other.team
	maxRange = 300;
}
with Sniper
{
	if alarm[1] < 30
		alarm[1] += 5;
}
gonnafire = 0