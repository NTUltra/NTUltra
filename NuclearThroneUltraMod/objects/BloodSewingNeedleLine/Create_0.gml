/// @description Higher damage

// Inherit the parent event
event_inherited();
dmg = 12;
if instance_exists(Player) && Player.ultra_got[16]
	dmg += 2;
