scrDrop(6,2)
if alarm[2] > 0 || loops > 1 || object_index == InvertedJellyFish
{
	ammo = maxAmmo
	event_perform(ev_alarm,2);
}
event_inherited()

