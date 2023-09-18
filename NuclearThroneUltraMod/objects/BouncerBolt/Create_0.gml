/// @description Bounce

// Inherit the parent event
event_inherited();
hits = 3;
if instance_exists(Player) && Player.skill_got[15]
	hits ++;
trailColour = make_colour_rgb(0,255,172);