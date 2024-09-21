/// @description Run duration
var ang = direction;
var am = 8;
var angstep = 360/am;
repeat(am)
{
	with instance_create(x,y,Smoke)
	{
		motion_add(ang,2);
	}
}
	
maxSpeed = maxSpeedNormal;
maxhealth = 5;
my_health = min(my_health,5);
walk = max(walk,10);
image_speed = 0.4;