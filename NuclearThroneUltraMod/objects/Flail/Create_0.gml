/// @description xxx

// Inherit the parent event
event_inherited();
hits ++;
dmg = 12
image_speed = 0.5;
if instance_exists(Player)
{
	if Player.skill_got[17] = 1
	{
		image_speed = max(0.2,0.35-(Player.betterlaserbrain*0.6))
		hits ++;
	}
}