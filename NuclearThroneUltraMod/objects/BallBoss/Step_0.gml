event_inherited()

motion_add(targetDirection,0.8)

if (firstTime && my_health < maxhealth) {
	if UberCont.normalGameSpeed == 60
		my_health += 1;
	else
		my_health += 2;
}	
if speed > maxSpeed
speed = maxSpeed

if hspeed > 0
    right = 1
else if hspeed < 0
    right = -1
if alarm[4] < 1
{
	if UberCont.normalGameSpeed == 60
		image_angle += spinRate*0.5;
	else
		image_angle += spinRate;
}
if array_length(myLasers) > 0
{
	if instance_exists(myLasers[0])
	{
		with myLasers[0]
		{
			alarm[0] += 1;
			x = other.x;
			y = other.y;
			image_angle = other.image_angle;
		}
	}
	else
	{
		event_perform(ev_alarm,3);
	}
	if array_length(myLasers) > 1
	{
		if instance_exists(myLasers[1])
		{
			with myLasers[1]
			{
				alarm[0] += 1;
				x = other.x;
				y = other.y;
				image_angle = other.image_angle+180;
			}
		}
		else
		{
			event_perform(ev_alarm,3);
		}
	}
}
if myShield != -1 && instance_exists(myShield)
{
	myShield.x = x + lengthdir_x(shieldDistance,image_angle+90);
	myShield.y = y + lengthdir_y(shieldDistance,image_angle+90);
	myShield.image_angle = image_angle+180;
}
if alarm[2] > 0 || alarm[3] > 0
	speed = 0;
	
if alarm[5] > 0
{
	speed = 0;
}
