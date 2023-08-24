/// @description fire
snd_play(sndEnemyFire)
var ang = originalAngle;
var ps = projectileSpeed;
with instance_create(x, y, EnemyBullet1) {
    motion_add(ang, ps)
    image_angle = direction
    team = other.team
}
with instance_create(x, y, EnemyBullet1) {
    motion_add(ang + 90, ps)
    image_angle = direction
    team = other.team
}
with instance_create(x, y, EnemyBullet1) {
    motion_add(ang + 180, ps)
    image_angle = direction
    team = other.team
}
with instance_create(x, y, EnemyBullet1) {
    motion_add(ang + 270, ps)
    image_angle = direction
    team = other.team
}
alarm[3] = 3;