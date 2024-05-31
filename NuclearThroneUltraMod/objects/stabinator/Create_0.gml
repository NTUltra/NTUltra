/// @description Init

// Inherit the parent event
event_inherited();
typ = 2;
alarm[0] = 1;
alarm[2] = 2;
dmg = 6;
if instance_exists(Player) && Player.skill_got[21] = 1
	alarm[3] = 1;