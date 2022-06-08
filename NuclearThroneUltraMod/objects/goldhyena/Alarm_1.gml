/// @description Start burping

// Inherit the parent event
event_inherited();

if firstGoAround
{
	alarm[4] = 40;
	firstGoAround = false;
}