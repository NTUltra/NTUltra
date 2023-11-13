/// @description Fire
snd_play(sndEnemyFire)
var ps = projectileSpeed + projectileSpeedDif;
with instance_create(x, y, EnemyBullet2Curve) {
    motion_add(other.gunangle-20, ps);
    image_angle = direction
    team = other.team
}
with instance_create(x, y, EnemyBullet2Curve) {
    motion_add(other.gunangle+20, ps);
    image_angle = direction
	image_yscale = -1;
    team = other.team
}
alarm[6] = fireDelay;
wkick = 4