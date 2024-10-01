/// @description LaserDuration
if array_length(myLasers) > 1
{
	with myLasers[0]
	{
		event_perform(ev_alarm,0);	
	}
	with myLasers[1]
	{
		event_perform(ev_alarm,0);	
	}
}
myLasers = [];
event_user(2);
