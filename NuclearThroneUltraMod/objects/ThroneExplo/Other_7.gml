/// @description PJJJORTAL
if sprite_index == spr_death
{
	image_speed = 0;
	image_index = image_number - 1;
	if !instance_exists(SurvivalWave)
	with instance_create(x,y,Portal)
	{
		type = 4
		sprite_index = sprBigPortalSpawn;
	}
}