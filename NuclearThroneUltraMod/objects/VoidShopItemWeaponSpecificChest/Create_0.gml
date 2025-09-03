/// @description xxx

// Inherit the parent event
event_inherited();

cost = 3;
if instance_exists(Player) && Player.skill_got[23] //Open mind
	cost -= 1;