/// @description Clean up lasers
if array_length(myLasers) > 0
{
	with myLasers[0]
	{
		event_perform(ev_alarm,0);	
	}
}
