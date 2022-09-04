/// @description I'm gonna push it.
var pp = projectilePush;
if other.isGrenade
{
	with other
	{
		with instance_create(x,y,Dust)
				motion_add(other.direction + random_range(-50,50),3+random(4));
		scrDeflectNade(other.direction);
		Sleep(10);
		BackCont.shake += 5;
	}	
}
else if other.typ == 1 || other.canBeMoved
{
	with other
	{
		with instance_create(x,y,Dust)
				motion_add(other.direction + random_range(-50,50),3+random(4));
		motion_add(other.direction,pp);
		image_angle = direction;
		speed = clamp(speed,0.5,24);
	}	
}