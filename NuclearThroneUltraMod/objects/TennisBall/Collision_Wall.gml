
if alarm[2] < 1
{
	if wallstick > 0
	{
		x = xprevious;
		y = yprevious;
		wallstick--;
		alarm[2] = 2;
	}
	else
	{
		instance_destroy();
		instance_create(x,y,Dust)
	}
}