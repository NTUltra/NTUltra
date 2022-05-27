/// @description Also Gass it

// Inherit the parent event
event_inherited();
with instance_create(x,y,ToxicGas)
{
	team = other.team;
	motion_add(other.gunangle+(random(28)-14),2)
	team = other.team
}