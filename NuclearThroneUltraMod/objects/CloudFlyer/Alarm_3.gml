/// @description Simple fire
snd_play(sndEnemyFire)
walk = 0;
speed = 0;
sprite_index = spr_fire;
image_index = 0;
alarm[2] = (image_number/image_speed) + 1
with instance_create(x, y, EnemyBullet1Square) {
	motion_add(other.gunangle, 4)
	image_angle = direction
	team = other.team
}