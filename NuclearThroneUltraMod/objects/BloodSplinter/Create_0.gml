/// @description blood trail

// Inherit the parent event
event_inherited();
if instance_exists(Player) && Player.ultra_got[74] && Player.altUltra
	hasWallCollision = false;
trailColour = make_color_rgb(229,105,91);
dmg -= 1;
alarm[11] = 0;
