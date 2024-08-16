/// @description Mod it

// Inherit the parent event
event_inherited();
var markForDestroy = noone;
with WeaponMod
{
	markForDestroy = id;
}
instance_create(spawnLocationX,spawnLocationY,WeaponMod);
with markForDestroy
{
	if alarm[0] > 0
	{
		event_perform(ev_alarm,0);	
	}
	instance_destroy();	
}
cost += 1;