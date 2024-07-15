scrDrop(15,2)
if !sleeping
{
	if alarm[2] > 0 || loops > 1 || object_index == InvertedJellyFish
	{
		ammo = maxAmmo
		event_perform(ev_alarm,2);
	}
}
if object_index == InvertedJellyFish
	instance_create(x,y,InvertedJellyExplosion);
else
	instance_create(x,y,JellyExplosion);
event_inherited()