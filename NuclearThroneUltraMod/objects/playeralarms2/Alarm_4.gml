/// @description Rebrainwash
alarm[4] = 90;
alarm[6] = 5;
if instance_exists(enemy) && instance_number(enemy) > 3
	with Player
	{
		instance_create(x,y,EyesBrainWashFX);
	}