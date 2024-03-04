///@description AI
alarm[1] = actTime;
if instance_exists(Player) && !Player.justAsheep
	with instance_create(x,y,TotemBuff)
	{
		owner = other.id;	
	}