/// @description Skip lines
if instance_exists(KeyCont) && KeyCont.key_pick[0] = 1
{
	KeyCont.key_pick[0] = 0;
	with VoidNPC
	{
		if alarm[2] > 1
		{
			debug("smoovin");
			var s = other.showCanSkip
			other.showCanSkip = false;
			event_perform(ev_alarm,2);
			other.showCanSkip = s;
		}
	}
}