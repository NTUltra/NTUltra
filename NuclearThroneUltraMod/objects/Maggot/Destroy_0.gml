/// @description Gass

// Inherit the parent event
event_inherited();

if loops > 9
{
	with instance_create(x,y,ToxicGas)
		cantHitTeam = other.team;
}
