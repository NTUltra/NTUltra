/// @description TRIANGLE BULLETS
snd_play(sndEnemyFire);
with instance_create(x,y,EnemyHomingTriangle)
{
	motion_add(other.gunangle+90,2);
	homingSpeed = 2;
	image_angle = direction
	team = other.team
}
with instance_create(x,y,EnemyHomingTriangle)
{
	motion_add(other.gunangle-90,2);
	homingSpeed = 2;
	image_angle = direction
	team = other.team
}
with instance_create(x,y,EnemyHomingTriangle)
{
	motion_add(other.gunangle-180,1);
	homingSpeed = 2;
	image_angle = direction
	team = other.team
}
sprite_index = spr_fire;
image_index = 0;
alarm[3] = (image_number/image_speed) + 1