/// @description Can still morph

// Inherit the parent event
event_inherited();

with instance_create(x,y,Morph)
{
	team = other.team;
	alarm[0] -= 1;
}