/// @description Shoot
if (fuckyou)
{
	snd_play(sndRocket);
	with instance_create(x,y,JockRocket)
	{
		motion_add(other.gunangle,other.projectileSpeed)
		team = other.team
		image_angle = direction
	}
}
else
{
	snd_play(sndSnowTankShoot);
	with instance_create(x,y,EnemyBullet5)
	{
		motion_add(other.gunangle,other.projectileSpeed)
		team = other.team
		image_angle = direction
	}
}
