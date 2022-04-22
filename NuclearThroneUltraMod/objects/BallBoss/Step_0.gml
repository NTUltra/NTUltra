event_inherited()

motion_add(direction,0.8)

if speed > maxSpeed
speed = maxSpeed

if hspeed > 0
    right = 1
else if hspeed < 0
    right = -1
if alarm[4] < 1
	image_angle += spinRate;
if array_length(myLasers) > 0
{
	with myLasers[0]
	{
		alarm[0] += 1;
		x = other.x;
		y = other.y;
		image_angle = other.image_angle;
	}
	if array_length(myLasers) > 1
	{
		with myLasers[1]
		{
			alarm[0] += 1;
			x = other.x;
			y = other.y;
			image_angle = other.image_angle+180;
		}
	}
}
if alarm[2] > 0 || alarm[3] > 0
	speed = 0;
	
if alarm[5] > 0
{
	/*
	scrTarget();
	if target > 0
	{
		gunangle = point_direction(x,y,target.xprevious,target.yprevious);
	}
	else
		alarm[5] = 0;*/
		speed = 0;
}
