/// @description Spawn projectiles
scrTarget();
var dir = point_direction(x,y,target.xprevious,target.yprevious);
dir += choose(random_range(30,60),random_range(-30,-60));
snd_play(sndBigBallFire);
var addspeed = point_distance(x,y,target.xprevious,target.yprevious)*0.0153;
debug(addspeed);
addspeed = min(addspeed,16);
if typ == 2
{
	if isInverted
	{
		with instance_create(x,y,InvertedThrone2BigBallLaserBullet)
		{	
			owner = other.owner;
			team = other.team;
			x += lengthdir_x(8, dir);
			y += lengthdir_y(8, dir);
			motion_add(dir,3+random(1.6)+addspeed);
		}
	}
	else
	{
		with instance_create(x,y,Throne2BigBallLaserBullet)
		{	
			owner = other.owner;
			team = other.team;
			x += lengthdir_x(8, dir);
			y += lengthdir_y(8, dir);
			motion_add(dir,2.3+random(1.6)+addspeed);
		}
	}
}
else
{
	if isInverted
	{
		with instance_create(x,y,InvertedThrone2BigBallLaserSquareBullet)
		{	
			friction -= 0.01;
			owner = other.owner;
			team = other.team;
			x += lengthdir_x(8, dir);
			y += lengthdir_y(8, dir);
			motion_add(dir,3.4+random(1.6)+addspeed);
		}
	}
	else
	{
		with instance_create(x,y,Throne2BigBallLaserSquareBullet)
		{	
			owner = other.owner;
			team = other.team;
			x += lengthdir_x(8, dir);
			y += lengthdir_y(8, dir);
			motion_add(dir,2.3+random(1.6)+addspeed);
		}
	}
}
instance_destroy();