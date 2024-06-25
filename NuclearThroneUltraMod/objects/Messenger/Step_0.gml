/// @description Walking
if y >= targetY - 8
	walk = false;
if walk
	vspeed += 0.8;
if speed > 2.5
	speed = 2.5;
if sprite_index != spr_sigh
{
	if speed > 0
	{
		sprite_index = spr_walk;	
	}
	else
	{
		sprite_index = spr_idle;	
	}
}