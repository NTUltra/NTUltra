/// @description Delay
alarm[0] = 12;
if instance_exists(Player)
{
	if Player.ultra_got[6] && !Player.altUltra
		alarm[0] = 7;
	if Player.ultra_got[8]
	{
		alarm[0] = 22;
	}
}