/// @description Spawn projectiles
scrTarget();
var dir = point_direction(x,y,target.xprevious,target.yprevious);
snd_play(sndBigBallFire);
var addspeed = point_distance(x,y,target.xprevious,target.yprevious)*0.0153;
debug(addspeed);
addspeed = min(addspeed,20);
if typ == 2
{
	if isInverted
	{
		with instance_create(x,y,InvertedBigGuardianBullet)
		{	
			owner = other.owner;
			team = other.team;
			x += lengthdir_x(8, dir);
			y += lengthdir_y(8, dir);
			motion_add(dir,2.8+random(1.6)+addspeed);
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
			motion_add(dir,2.4+random(1.6)+addspeed);
		}
	}
}
else
{
	if isInverted
	{
		with instance_create(x,y,InvertedBigGuardianSquareBullet)
		{	
			owner = other.owner;
			team = other.team;
			x += lengthdir_x(8, dir);
			y += lengthdir_y(8, dir);
			motion_add(dir,3.4+random(1.6)+addspeed);
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
			motion_add(dir,2.4+random(1.6)+addspeed);
		}
	}
}
instance_destroy();