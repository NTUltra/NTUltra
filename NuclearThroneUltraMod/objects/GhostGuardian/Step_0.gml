event_inherited()

if target != noone && goForIt
{
	motion_add(point_direction(x,y,target.xprevious,target.yprevious),acc);
}
if speed > maxSpeed
	speed = maxSpeed
else if speed < 2
	speed = 2;
	
if (hspeed > 0)
		right = 1;
	else
		right = -1;

