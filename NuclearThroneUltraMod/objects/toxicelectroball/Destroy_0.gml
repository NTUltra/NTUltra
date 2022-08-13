/// @description FROG GASS

// Inherit the parent event
event_inherited();

with instance_create(x,y,ToxicThrowerGas)
{
	image_xscale -= 0.1
	image_yscale -= 0.1
	team = other.team;	
}