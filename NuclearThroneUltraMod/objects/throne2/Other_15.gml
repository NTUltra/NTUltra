/// @description Cross bullet attack
speed = 0;
var ang = 0;
if target > -1 && instance_exists(target) && crossAmmo == crossMaxAmmo
	ang = point_direction(x,y,target.x,target.y);
var pspd = crossPspeed;
if loops > random(3)
{
	if isInverted
	{
		repeat(crossAmount)
		{
			with instance_create(x,y,InvertedGuardianBulletSpawn)
			{
				typ = 3;
				motion_add(ang,pspd);
				sprite_index = sprInvertedGuardianSquareBulletSpawn;
				owner = other.id;
				team = other.team
			}
			ang += crossAngleStep;
		}
	}
	else
	{
		repeat(crossAmount)
		{
			with instance_create(x,y,GuardianBulletSpawn)
			{
				typ = 3;
				motion_add(ang,pspd);
				sprite_index = sprGuardianSquareBulletSpawn;
				owner = other.id;
				team = other.team
			}
			ang += crossAngleStep;
		}
	}
}
else
{
	if isInverted
	{
		repeat(crossAmount)
		{
			with instance_create(x,y,InvertedGuardianBulletSpawn)
			{
				motion_add(ang,pspd);
				owner = other.id;
				team = other.team
			}
			ang += crossAngleStep;
		}
	}
	else
	{
		repeat(crossAmount)
		{
			with instance_create(x,y,GuardianBulletSpawn)
			{
				motion_add(ang,pspd);
				owner = other.id;
				team = other.team
			}
			ang += crossAngleStep;
		}
	}
}
crossAmmo --;
if crossAmmo > 0
{
	alarm[4] = 2;
	alarm[1] += 3;
}