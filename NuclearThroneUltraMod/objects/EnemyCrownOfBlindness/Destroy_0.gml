/// @description Bring back the light

// Inherit the parent event
event_inherited();

with TopCont
{
	if !scrIsCrown(19) || instance_exists(Player) && Player.ultra_got[11]//BRAIN STYLE
		darkness = 0;
}