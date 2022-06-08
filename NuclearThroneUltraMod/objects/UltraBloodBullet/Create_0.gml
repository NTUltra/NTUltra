/// @description More dmg

// Inherit the parent event
event_inherited();

dmg = 16;
friction = 0.2;
if instance_exists(Player){
	if Player.ultra_got[16]//Melting doomed
	{
		dmg = 24;
		friction -= 0.05;
	}
}