/// @description xxx

// Inherit the parent event
event_inherited();
image_yscale = 1;
if instance_exists(Player) && Player.skill_got[12]
{
	image_yscale = 0.8;
}
