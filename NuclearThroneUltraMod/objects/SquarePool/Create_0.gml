/// @description Scale



// Inherit the parent event
event_inherited();
image_speed = 0.4;
image_xscale = 0.1;
image_yscale = 0.1;
alarm[6] = 1;
alarm[5] = 10;
alarm[4] = 42;
if instance_exists(Player)
{
	if team != Player.team
	{
		if scrIsCrown(23)//Crown of speed
		{
			alarm[4] += 5;
		}
		if Player.skill_got[12] = 1
		{
			alarm[4] -= 10;
		}
		if scrIsCrown(24)//Crown of sloth
		{
			alarm[4] -= 5;
		}
		if scrIsGamemode(9)
		{
			alarm[4] -= 5;
		}
		alarm[4] += min(Player.loops*6,30); 
	}
}