/// @description die slowly
alarm[1] = 2;
scrTarget()
if target > 0
{
	if distance_to_object(target) < 64 and sprite_index != spr_hurt and sprite_index != spr_chrg
	{
	my_health -= 2;
	prevhealth = my_health;
	sprite_index = spr_chrg
	image_index = 0
	}
}