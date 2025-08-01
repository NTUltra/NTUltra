/// @description Fire LASER big balls
if target != noone && instance_exists(target)
{
	snd_play(sndBigBallFire);
	if loops + 1 > random(3)
	{
		with instance_create(x,y,Throne2BigBulletSpawn)
		{
			typ = 3;
			sprite_index = sprBigGuardianSquareBulletSpawn;
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
		with instance_create(x,y,Throne2BigBulletSpawn)
		{
			owner = other.id;
			team = other.team
			isInverted = other.isInverted;
			if isInverted
				sprite_index = sprInvertedBigGuardianBulletSpawn;
		}
	}
	ammo --;
	if ammo > 0
	{
		alarm[3] = fireRate;
		alarm[1] += alarm[3]+30;
	}
}