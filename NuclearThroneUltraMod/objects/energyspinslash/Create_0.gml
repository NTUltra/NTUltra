/// @description Rotate

// Inherit the parent event
event_inherited();
dmg = 15;
if instance_exists(Player)
{
	if Player.skill_got[17] = 1
	{
		image_speed = max(0.1,0.25-(Player.betterlaserbrain*0.6))
		hits ++;
	}
}