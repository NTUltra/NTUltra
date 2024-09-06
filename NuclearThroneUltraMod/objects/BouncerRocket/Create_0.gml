/// @description Init hits

// Inherit the parent event
event_inherited();
dmg = 24;
hitEntities = [];
hits = 4;
if instance_exists(Player) && Player.skill_got[15]
	hits ++;