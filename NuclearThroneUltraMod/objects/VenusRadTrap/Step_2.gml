/// @description  check active

// Inherit the parent event
if active > 1
	event_inherited();
else
{
	my_health = max(my_health,prevhealth);
	speed = 0
	x = xstart;
	y = ystart;
}

