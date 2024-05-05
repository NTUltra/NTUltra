/// @description PJJJORTAL
if sprite_index == spr_death
{
	image_speed = 0;
	image_index = image_number - 1;
	if instance_exists(BigGenerator)
	{
		instance_create_depth(x,y - 8,depth - 1,GameEnd);
		speed = 0;
	}
	else if !instance_exists(SurvivalWave)
	{
		with instance_create(x,y,Portal)
		{
			type = 4
			image_speed = 0.4;
			depth = min(other.depth - 1,2);
			alarm[1] = 0;
			sprite_index = sprBigPortalSpawn;
			visible = true;
		}
	}
}