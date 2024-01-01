/// @description Shoot
scrTarget()

if target != noone
{
	var xx = target.x + (target.hspeed*1.75)
	var yy = target.y + (target.vspeed*1.75)
	gunangle = point_direction(x, y, xx, yy);
	if (fuckyou)
	{
		snd_play(sndRocket);
		with instance_create(x,y,JockRocket)
		{
			motion_add(other.gunangle-34,other.projectileSpeed+2)
			team = other.team
			image_angle = direction
		}
		with instance_create(x,y,JockRocket)
		{
			motion_add(other.gunangle,other.projectileSpeed)
			team = other.team
			image_angle = direction
		}
		with instance_create(x,y,JockRocket)
		{
			motion_add(other.gunangle+34,other.projectileSpeed+2)
			team = other.team
			image_angle = direction
		}
	}
	else
	{
		snd_play(sndSnowTankShoot);
		with instance_create(x,y,EnemyBullet5)
		{
			motion_add(other.gunangle-34,other.projectileSpeed+2)
			team = other.team
			image_angle = direction
		}
		with instance_create(x,y,EnemyBullet5)
		{
			motion_add(other.gunangle,other.projectileSpeed)
			team = other.team
			image_angle = direction
		}
		with instance_create(x,y,EnemyBullet5)
		{
			motion_add(other.gunangle+34,other.projectileSpeed+2)
			team = other.team
			image_angle = direction
		}
	}
}