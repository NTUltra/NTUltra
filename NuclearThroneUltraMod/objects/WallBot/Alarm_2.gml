/// @description fire
snd_play(sndEnemyFire)
var ang = originalAngle + 180;
var ps = projectileSpeed;
with instance_create(x, y, EnemyBullet1) {
    motion_add(ang, ps)
    image_angle = direction
    team = other.team
}
alarm[3] = 3;