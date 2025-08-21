event_inherited()

with target
{
	with other
	{
		motion_add(point_direction(x,y,target.xprevious,target.yprevious),acc);	
	}
}
if sleeping
	speed = 0;
else if speed > maxSpeed
	speed = maxSpeed
else if speed < 2
	speed = 2;
	
if (hspeed > 0)
		right = 1;
	else
		right = -1;

