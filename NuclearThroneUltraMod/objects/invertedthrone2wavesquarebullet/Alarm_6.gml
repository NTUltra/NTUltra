/// @description Spawn some projectiles now
with instance_create(x,y,InvertedGuardianBulletSpawn)
{	
	typ = 3;
	sprite_index = sprInvertedGuardianSquareBulletSpawn;
	team = other.team;
	owner = other.id;
	motion_add(other.aimDirection,3);
}
debug("Shoot");
alarm[6] = 20;