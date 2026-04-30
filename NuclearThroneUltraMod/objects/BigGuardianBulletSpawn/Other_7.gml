/// @description Spawn projectiles
scrTarget();
if target != noone && instance_exists(target)
{
	var dir = point_direction(x,y,target.xprevious,target.yprevious);
	snd_play(sndBigBallFire);
	var addspeed = point_distance(x,y,target.xprevious,target.yprevious)*0.0153;
	addspeed = min(addspeed,20);
	if instance_exists(NuclearThrone1)
	{
		if NuclearThrone1.badboyBuff != 1
		{
			addspeed *= 1.25;
		}
	}
	if isThrone2
	{
		dir += choose(random_range(25,55),random_range(-25,-55));
		addspeed *= 0.975;
	}
	
	if typ == 2
	{
		if isInverted
		{
			with instance_create(x,y,InvertedBigGuardianBullet)
			{
				shootOutPickup = other.shootOutPickup;
				owner = other.owner;
				team = other.team;
				x += lengthdir_x(8, dir);
				y += lengthdir_y(8, dir);
				motion_add(dir,max(5,2.4+random(1.5)+addspeed));
				alarm[0] += 1;
			}
		}
		else
		{
			with instance_create(x,y,BigGuardianBullet)
			{	
				owner = other.owner;
				team = other.team;
				x += lengthdir_x(8, dir);
				y += lengthdir_y(8, dir);
				motion_add(dir,max(5,2.2+random(1.6)+addspeed));
			}
		}
	}
	else
	{
		if isInverted
		{
			with instance_create(x,y,InvertedBigGuardianSquareBullet)
			{
				shootOutPickup = other.shootOutPickup;
				alarm[0] += 1;
				owner = other.owner;
				team = other.team;
				x += lengthdir_x(8, dir);
				y += lengthdir_y(8, dir);
				motion_add(dir,max(5,2.4+random(1.6)+addspeed));
			}
		}
		else
		{
			with instance_create(x,y,BigGuardianSquareBullet)
			{	
				owner = other.owner;
				team = other.team;
				x += lengthdir_x(8, dir);
				y += lengthdir_y(8, dir);
				motion_add(dir,max(5,2.2+random(1.5)+addspeed));
			}
		}
	}
}
instance_destroy();