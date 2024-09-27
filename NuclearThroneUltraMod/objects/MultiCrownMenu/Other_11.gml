/// @description GO
if selectedCrown == -1
{
	with instance_nearest(x,y,CrownIcon)
	{
		keeper = true;
		event_user(0);
	}
	instance_destroy();
}
else
{
	with CrownIcon
	{
		if crown == other.selectedCrown
		{
			event_user(0);
		}
	}
	instance_destroy();
}