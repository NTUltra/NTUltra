/// @description Init

// Inherit the parent event
event_inherited();

alarm[0] = 4;
alarm[2] = 2;

if instance_exists(Player)
{
	if Player.skill_got[17] = 1
	{
		image_speed = max(0.2,0.35-(Player.betterlaserbrain*0.6))
		hits ++;
	}
}