/// @description End
if sprite_index == sprSheepSuperChargeEnd
{
	if forcePlayer
	{
		event_perform(ev_alarm,1);	
	}
	instance_destroy();
}
else
{
	image_index = image_number - 1;
	image_speed = 0;
}