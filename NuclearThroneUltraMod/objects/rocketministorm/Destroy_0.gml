/// @description FROG GASS

// Inherit the parent event
event_inherited();

if isGaseous
{
	repeat(2)
	with instance_create(x,y,ToxicThrowerGas)
	{
		image_xscale -= 0.1
		image_yscale -= 0.1
		team = other.team;
		speed += 0.1;
	}
}