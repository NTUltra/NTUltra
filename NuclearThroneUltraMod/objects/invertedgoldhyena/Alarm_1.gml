/// @description Start burping

// Inherit the parent event
event_inherited();

if firstGoAround
{
	alarm[4] = 30;
	firstGoAround = false;
}