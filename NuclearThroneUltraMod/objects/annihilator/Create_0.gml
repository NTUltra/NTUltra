/// @description Init

// Inherit the parent event
event_inherited();
typ = 2;
alarm[1] = 150//5 seconds
alarm[0] = 1;
dmg = 12;
if instance_exists(Player){
	if Player.ultra_got[74] && Player.altUltra
	{
		alarm[4] = 0;
		alarm[1] = 120//5 seconds
	}
}