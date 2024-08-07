/// @description Fire
ammo = maxAmmo;
if target != noone && instance_exists(target)
	gunangle = point_direction(x, y, target.x, target.y);
projectileSpeed = originalProjectileSpeed;
alarm[4] = fireRate*2 + tellTime;
alarm[1] += alarm[4];