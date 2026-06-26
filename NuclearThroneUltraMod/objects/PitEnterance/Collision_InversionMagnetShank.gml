/// @description YOU SOLVED THE PUZZLE
mask_index = mskPickupThroughWall;
instance_destroy();
disable = true;
with BigVultureSkull
{
	my_health = 0;
}
with BigFishSkull
{
	my_health = 0;
}
with GraveyardEntrance
{
	my_health = 0;
}
var ar = 1;
with instance_create(x,y,Portal)
{
	type = 1
	pullstrength = 3;
	alarm[1] = 1;
	x = other.x;
	y = other.y;
	scrForcePosition60fps();
	with Player
	{
		ar = area;
		area = 139
		subarea = 0
		lockout = true;
		if loops < 1
		{
			baseWeaponTier += 2;
			gameDifficulty += 1;
		}
		x = other.x;
		y = other.y;
		scrForcePosition60fps();
	}
}
with enemy
{
	my_health = 0;
	prevhealth = 0;
}
with instance_create(x,y,PortalEnviromentReplacer)
{
	area = 139;
	prevArea = ar;
}