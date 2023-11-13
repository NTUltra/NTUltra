/// @description Bounce

// Inherit the parent event
event_inherited();
hits = 3;
shotgunShoulder = false;
if instance_exists(Player) && Player.skill_got[15]
{
	hits ++;
	shotgunShoulder = true;
}
trailColour = make_colour_rgb(0,255,172);