/// @description Fire
snd_play(sndBouncerPistol)
wkick = 4
	gunangle = point_direction(x, y, target.x, target.y)
with instance_create(x, y, EnemyBouncerBullet) {
    motion_add(other.gunangle + random(20) - 10, 4)
    image_angle = direction
    team = other.team
}