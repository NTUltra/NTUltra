/// @description Big balls
if owner > -1 && instance_exists(owner) && instance_exists(Player)
{
	if owner.bigballs
	{
		snd_play_2d(sndBigBallFire);
		if loops + 1 > random(3)
		{
			with instance_create(x,y,BigGuardianBulletSpawn)
			{
				typ = 3;
				sprite_index = sprBigGuardianSquareBulletSpawn;
				owner = other.id;
				team = other.team
				isInverted = other.isInverted;
				shootOutPickup = true;
				if isInverted
				{
					sprite_index = sprInvertedBigGuardianSquareBulletSpawn;
					motion_add(270,1);
					hspeed += choose(2,-2);
				}
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
				isInverted = other.isInverted;
				shootOutPickup = true;
				if isInverted
				{
					sprite_index = sprInvertedBigGuardianBulletSpawn;
					motion_add(270,1);
					hspeed += choose(2,-2);
				}
			}
		}
		alarm[2] = (firerate*badboyBuff) * 15
	}
}