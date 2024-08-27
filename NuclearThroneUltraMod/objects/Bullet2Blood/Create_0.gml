/// @description Init

// Inherit the parent event
event_inherited();
wallbounce = 2;
if instance_exists(Player)
{
	if Player.skill_got[15] = 1
	{
		friction -= 0.3;
		shotgunshouldered = true;
		alarm[2] = 1;
		wallbounce += 1;
		alarm[1]+=4;

		if Player.race=25
		{
			wallbounce += 1;
		}
		if Player.ultra_got[97] && !Player.altUltra
		{
			friction -= 0.1;
			wallbounce += 2;
			alarm[1]+=2;
		}
	}
}