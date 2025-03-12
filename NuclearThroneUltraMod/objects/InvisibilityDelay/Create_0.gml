/// @description Lifetime and alpha
alarm[0] = 15;
if instance_exists(Player) && Player.ultra_got[110] && !Player.altUltra
{
	alarm[0] = 7;	
}