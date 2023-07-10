/// @description Spawn some projectiles now
snd_play(sndNothingFire,0.1);
with instance_create(x,y,InvertedGuardianBulletSpawn)
{	
	onlyHitPlayerTeam = other.onlyHitPlayerTeam;
	typ = 3;
	sprite_index = sprInvertedGuardianSquareBulletSpawn;
	team = other.team;
	owner = other.id;
	motion_add(other.aimDirection,other.pSpeed);
}
alarm[6] = spawnDelay;