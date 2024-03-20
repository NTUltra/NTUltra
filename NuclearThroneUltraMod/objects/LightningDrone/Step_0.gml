/// @description Movement
if walk > 0
{
	if UberCont.normalGameSpeed == 60
	{
		walk -= 0.5;	
		motion_add(direction,1);
	}
	else
	{
		walk -= 1;
		motion_add(direction,2);
	}
}
else if speed > 0
{
	if UberCont.normalGameSpeed == 60
	{
		speed -= 0.5;
	}
	else
	{
		speed -= 1;
	}
}
if speed > 8
	speed = 8;