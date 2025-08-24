/// @description Delay
alarm[0] = 12;
//cant be lower than 6 frames
if instance_exists(Player)
{
	if Player.ultra_got[6] && !Player.altUltra
		alarm[0] = 7;
	if Player.ultra_got[8]
	{
		alarm[0] = 40;
		alarm[1] = 2;
	}
}