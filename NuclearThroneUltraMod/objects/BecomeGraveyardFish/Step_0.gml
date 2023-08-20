/// @description Movement
if walk > 0
{
	var accc = acc;
	if UberCont.normalGameSpeed == 60
	{
		accc *= 0.5;
		walk -= 0.5;
	}
	else
	{
		walk --;	
	}
	motion_add(direction,accc);
}
else if speed > 3
	speed = 3;
if place_meeting(x+hspeed,y,Wall)
{
	x -= hspeed;
	hspeed *= -1;
	if hspeed > 0
		image_xscale = 1;
	else if hspeed < 0
		image_xscale = -1;
}
if place_meeting(x,y+vspeed,Wall)
{
	y -= vspeed;
	vspeed *= -1;
}

if speed > maxSpeed
	speed = maxSpeed;