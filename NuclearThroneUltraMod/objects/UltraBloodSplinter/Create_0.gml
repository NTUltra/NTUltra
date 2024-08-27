/// @description ultra trail

// Inherit the parent event
event_inherited();
dmg = 17;
trailColour = c_lime;
wallHits = -1;
if instance_exists(Player) && Player.skill_got[15]
	wallHits -= 1;