/// @description Proper skip control
if alarm[2] < 1 && instance_exists(KeyCont) && KeyCont.key_fire[0] == 1
{
	if alarm[2] < 1
		event_perform(ev_alarm,0);
}