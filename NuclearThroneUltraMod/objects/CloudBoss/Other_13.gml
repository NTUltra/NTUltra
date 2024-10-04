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
sprite_index = spr_fire;
image_index = 0;
alarm[3] = (image_number/image_speed) + 1