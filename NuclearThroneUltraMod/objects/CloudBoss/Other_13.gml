/// @description SQUARE BULLETS
snd_play(sndEnemyFire);
with instance_create(x,y,EnemyBullet1Square)
{
	motion_add(other.gunangle,4.6);
	image_angle = direction
	team = other.team
}
with instance_create(x,y,EnemyBullet1Square)
{
	motion_add(other.gunangle + 15,6);
	image_angle = direction
	team = other.team
}

with instance_create(x,y,EnemyBullet1Square)
{
	motion_add(other.gunangle - 15,6);
	image_angle = direction
	team = other.team
}
sprite_index = spr_fire;
image_index = 0;
alarm[3] = (image_number/image_speed) + 1