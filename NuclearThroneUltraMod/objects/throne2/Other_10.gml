/// @description Fire big balls
if target != noone
{
	if loops > random(3)
	{
		with instance_create(x,y,BigGuardianBulletSpawn)
		{
			typ = 3;
			sprite_index = sprBigGuardianSquareBulletSpawn;
			isThrone2 = true;
			owner = other.id;
			team = other.team
			isInverted = other.isInverted;
			if isInverted
				sprite_index = sprInvertedBigGuardianSquareBulletSpawn;
			else
				sprite_index = sprBigGuardianSquareBulletSpawn;
		}
	}
	else
	{
		with instance_create(x,y,BigGuardianBulletSpawn)
		{
			owner = other.id;
			team = other.team
			isThrone2 = true;
			isInverted = other.isInverted;
			if isInverted
				sprite_index = sprInvertedBigGuardianBulletSpawn;
		}
	}
	ammo --;
	if ammo > 0
	{
		alarm[2] = fireRate;
		alarm[1] += alarm[2]+30;
	}
}