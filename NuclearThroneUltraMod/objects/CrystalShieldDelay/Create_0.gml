/// @description Delay
alarm[0] = 8;
if instance_exists(Player) && Player.ultra_got[6] && !Player.altUltra
	alarm[0] = 1;