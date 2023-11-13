/// @description Fire
alarm[0] = 30;
snd_play(sndEnemyFire)
with instance_create(x, y, EnemyBullet2Curve) {
    motion_add(other.direction-90, 5);
    image_angle = direction
    team = other.team
}

with instance_create(x, y, EnemyBullet2Curve) {
    motion_add(other.direction+90, 5);
    image_angle = direction
	image_yscale = -1;
    team = other.team
}