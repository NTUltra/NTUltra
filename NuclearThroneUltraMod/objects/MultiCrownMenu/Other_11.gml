/// @description GO
if selectedCrown == -1
{
	with instance_nearest(x,y,CrownIcon)
	{
		keeper = true;
		crown = 1;
		event_user(0);
	}
	if Player.crownpoints <= 0
		instance_destroy();
	else
	{
		selectedCrown = -1;
		event_user(0);
	}
}
else
{
	with instance_create(x,y,CrownIcon)
	{
		crown = other.selectedCrown;
		event_user(0);
	}
	if Player.crownpoints <= 0
		instance_destroy();
	else
	{
		selectedCrown = -1;
		event_user(0);
	}
}