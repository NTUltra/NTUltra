/// @description SQUARE BULLETS
snd_play(sndEnemyFire);
with instance_create(x,y,EnemyBullet1Square)
{
	motion_add(other.gunangle,other.squareProjectileSpeed);
	image_angle = direction
	team = other.team
}
with instance_create(x,y,EnemyBullet1Square)
{
	motion_add(other.gunangle + other.squareOffset,other.squareProjectileSpeedOff);
	image_angle = direction
	team = other.team
}

with instance_create(x,y,EnemyBullet1Square)
{
	motion_add(other.gunangle - other.squareOffset,other.squareProjectileSpeedOff);
	image_angle = direction
	team = other.team
}
if (isInverted)
{
	with instance_create(x,y,EnemyLaser)
	{
		image_angle = other.gunangle;
		team = other.team
		maxDistance = 3;
		laserDecrease -= 0.1;
		laserDecrease = max(laserDecrease,0.05);
		alarm[2] += 20;
		event_perform(ev_alarm,0)
	}
	with instance_create(x,y,EnemyLaser)
	{
		image_angle = other.gunangle + other.squareOffset;
		team = other.team
		maxDistance = 4;
		laserDecrease -= 0.1;
		laserDecrease = max(laserDecrease,0.05);
		alarm[2] += 20;
		event_perform(ev_alarm,0)
	}
	with instance_create(x,y,EnemyLaser)
	{
		image_angle = other.gunangle - other.squareOffset;
		team = other.team
		maxDistance = 4;
		laserDecrease -= 0.1;
		laserDecrease = max(laserDecrease,0.05);
		alarm[2] += 20;
		event_perform(ev_alarm,0)
	}
}
sprite_index = spr_fire;
image_index = 0;
alarm[3] = (image_number/image_speed) + 1