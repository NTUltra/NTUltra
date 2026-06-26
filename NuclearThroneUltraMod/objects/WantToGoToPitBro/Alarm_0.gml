/// @description Occasionally
if !instance_exists(WantBoss) && !instance_exists(SandWorm)
{
	var instaGo = instaTp;
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
			subarea = 0;
			if loops < 1
			{
				baseWeaponTier += 1;
			}
			if instaGo
			{
				lockout = true;
				if loops < 1
				{
					baseWeaponTier += 1;
				}
				x = other.x;
				y = other.y;
				scrForcePosition60fps();
			}
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
}
alarm[0] = 30;