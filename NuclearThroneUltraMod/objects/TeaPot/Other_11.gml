/// @description Fire 2
image_index = 0
sprite_index = spr_fire
direction = point_direction(x,y,target.x,target.y);
speed *= 0.5;
snd_play(sndEnemyFire);
with instance_create(x, y, EnemyBullet2Curve) {
    motion_add(other.direction-30, 3);
    image_angle = direction
    team = other.team
}
with instance_create(x, y, EnemyBullet2Curve) {
    motion_add(other.direction+30, 3);
    image_angle = direction
	image_yscale = -1;
    team = other.team
}
with instance_create(x, y, EnemyBullet2Curve) {
    motion_add(other.direction-20, 4);
    image_angle = direction
    team = other.team
}
with instance_create(x, y, EnemyBullet2Curve) {
    motion_add(other.direction+20, 4);
    image_angle = direction
	image_yscale = -1;
    team = other.team
}