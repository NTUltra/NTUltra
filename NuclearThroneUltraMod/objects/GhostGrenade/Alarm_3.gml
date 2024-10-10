/// @description Ghsot effects

// Inherit the parent event
event_inherited();
with instance_create(x,y,GhostEffect)
{
	motion_add(random(360),1 + random(2));
}