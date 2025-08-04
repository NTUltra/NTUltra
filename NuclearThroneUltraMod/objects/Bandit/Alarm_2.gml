/// @description Fire
if target != noone && instance_exists(target)
{
	snd_play(sndEnemyFire)
	wkick = 4
	gunangle = point_direction(x, y, target.x, target.y)
	with instance_create(x, y, EnemyBullet1) {
		motion_add(other.gunangle + random(20) - 10, other.projectileSpeed)
		image_angle = direction
		team = other.team
	}
	alarm[1] += actTime;
}