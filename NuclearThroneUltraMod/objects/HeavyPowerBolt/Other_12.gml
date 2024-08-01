/// @description Hit sound

// Inherit the parent event
event_inherited();
if owner != noone && instance_exists(owner)
	with Player
	{
		if id == other.owner
		{
			ammo[3] += 1;
		}
	}
BackCont.shake += 4;