/// @description Destroy



// Inherit the parent event
event_inherited();

if droprate > 0
	with instance_create(x,y,MaggotInverted)
	{
		existTime = 30;
	}