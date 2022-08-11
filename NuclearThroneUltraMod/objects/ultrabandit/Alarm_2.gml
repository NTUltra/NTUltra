/// @description Fire
snd_play(sndEnemyFire)
wkick = 4
with instance_create(x, y, EnemyBullet1) {
    motion_add(other.gunangle-14, other.pspeed-0.06)
    image_angle = direction
    team = other.team
}
with instance_create(x, y, EnemyBullet1) {
    motion_add(other.gunangle+14, other.pspeed-0.06)
    image_angle = direction
    team = other.team
}
with instance_create(x, y, EnemyBullet1Square) {
    motion_add(other.gunangle, other.pspeed)
    image_angle = direction
    team = other.team
}
