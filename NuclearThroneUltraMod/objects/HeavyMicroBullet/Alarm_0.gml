/// @description Also explode a little

// Inherit the parent event
event_inherited();

with instance_create(x,y,HeavyMicroSplash)
{
	team = other.team
	if team != 2
		sprite_index = sprOExploDeflected;
}