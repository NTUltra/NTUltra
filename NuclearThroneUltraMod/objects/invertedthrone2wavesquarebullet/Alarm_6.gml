/// @description Spawn some projectiles now
with instance_create(x,y,InvertedGuardianBulletSpawn)
{	
	onlyHitPlayerTeam = other.onlyHitPlayerTeam;
	typ = 3;
	sprite_index = sprInvertedGuardianSquareBulletSpawn;
	team = other.team;
	owner = other.id;
	motion_add(other.aimDirection,3);
}
alarm[6] = spawnDelay;