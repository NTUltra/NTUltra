/// @description Kraken it up

// Inherit the parent event
event_inherited();

alarm[0] = 5;

snd = sndLaser;
if instance_exists(Player) && Player.skill_got[17] = 1
	snd = sndLaserUpg;