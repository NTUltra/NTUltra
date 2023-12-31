/// @description Keep track of owner
if owner > 0 && instance_exists(owner)
{
	if owner.alarm[alarmIndex] < 4
	{
		instance_destroy();	
	}
	else
	{
		x = owner.x;
		y = owner.y - yoffset;
	}
}
else
{
	instance_destroy();	
}