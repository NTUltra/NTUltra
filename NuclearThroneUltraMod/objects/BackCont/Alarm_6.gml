/// @description Fuck it progression checker

alarm[6] = 200;
if instance_exists(Corpse) && instance_exists(Player)
	with instance_nearest(Player.x,Player.y,Corpse)
	{
		alarm[0] = 30;
	}
