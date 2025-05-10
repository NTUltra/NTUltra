scrDrop(15,2)
if !sleeping
{
	ammo = maxAmmo
	event_perform(ev_alarm,2);
}
instance_create(x,y,JellyExplosion);
event_inherited()