/// @description Fire the fucker

// Inherit the parent event
event_inherited();

var hitGuy = hitEntities[array_length(hitEntities)-1];
var t = team;
with hitGuy
{
	with instance_create(x,y,Flame)
	{
		team = t;
	}
}