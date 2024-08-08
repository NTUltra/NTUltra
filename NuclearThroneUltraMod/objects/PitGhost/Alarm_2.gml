/// @description Fire
if goToTarget
	exit;
sprite_index = spr_fire;
image_index = 0;
alarm[3] = image_number/image_speed;
snd_play(sndGhostFire,0.1)
with instance_create(x, y, EnemyBullet1Small) {
    motion_add(other.gunangle + 5, 1)
    image_angle = direction
    team = other.team
}
with instance_create(x, y, EnemyBullet1Small) {
    motion_add(other.gunangle - 5, 1)
    image_angle = direction
    team = other.team
}