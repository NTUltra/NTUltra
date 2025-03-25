/// @description More dmg

// Inherit the parent event
event_inherited();

dmg = 20;//16
alarm[1] += 3;
friction = 0.2;
if instance_exists(Player){
	if Player.ultra_got[16]//Melting doomed
	{
		dmg = 26;//24
		friction -= 0.05;
	}
}