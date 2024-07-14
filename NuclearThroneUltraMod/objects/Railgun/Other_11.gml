/// @description Packaged trigger fingers

// Inherit the parent event
event_inherited();
Sleep(20);
with Player
{
	var baked = 14 + Player.skill_got[17]*2 + Player.betterlaserbrain;
	if wep == 793
	{
		reload -= baked;	
	}
	else if bwep == 793
	{
		breload -= baked;
	}
	else if cwep == 793
	{
		creload -= baked;
	}
}