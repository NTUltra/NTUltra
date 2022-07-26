/// @description Accurate shot
scrTarget();
if target > 0
{
	var dir = point_direction(x,y,target.x,target.y);
	if isInverted
	with instance_create(x,y,InvertedGuardianBulletSpawn)
	{
		typ = 3;
		motion_add(dir,other.pSpeedAccurate)
		sprite_index = sprGuardianSquareBulletSpawn;
		owner = other.id;
		team = other.team
	}
	else
	with instance_create(x,y,GuardianBulletSpawn)
	{
		typ = 3;
		motion_add(dir,other.pSpeedAccurate)
		sprite_index = sprGuardianSquareBulletSpawn;
		owner = other.id;
		team = other.team
	}
}
