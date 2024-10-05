/// @description Init

// Inherit the parent event
event_inherited();
minSpeed += 0.5;
dmg = 7.5;
flexScale = 0.12;
knockback = 4;
if instance_exists(Player)
{
	if Player.skill_got[17] = 1
	{
		dmg += 1;
		flexScale += 0.025;
	}
}
friction = 0.3;
image_xscale -= 0.5;
image_yscale = image_xscale;
fxLength = 12;