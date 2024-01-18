/// @description Fire
if target != noone && instance_exists(target)
{
	snd_play(sndEnemyFire)
	wkick = 4
	gunangle = point_direction(x, y, target.x, target.y);
	var ps = projectileSpeed - (projectileSpeedDif*2);
	with instance_create(x, y, EnemyBullet2Curve) {
	    motion_add(other.gunangle, ps);
	    image_angle = direction
	    team = other.team
	}
	with instance_create(x, y, EnemyBullet2Curve) {
	    motion_add(other.gunangle, ps);
	    image_angle = direction
		image_yscale = -1;
	    team = other.team
	}
	alarm[1] = fireDelay * 3 + (actTime * 2);
	alarm[2] = fireDelay;

	with JungleGorilla
	{
		alarm[1] += actTime * 2;	
	}
}