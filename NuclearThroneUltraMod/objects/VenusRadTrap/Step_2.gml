/// @description  check active

// Inherit the parent event
if active > 1
	event_inherited();
else
{
	//Force activatio if damaged
	if my_health < prevhealth && active != 1
	{
		sprite_index = spr_active;
		image_index = 0;
		active = 1;
		imageIndex = 0;
		with VenusRadTrap
		{
			routines -= 20;	
		}	
	}
	if active == 1
	{
		my_health = max(my_health,prevhealth);	
	}
	speed = 0
	x = xstart;
	y = ystart;
}

