/// @description anim handle
if isInverted
{
	if sprite_index == sprInvertedThroneFlameEnd
	{
		if !instance_exists(NuclearThrone1)
		{
			instance_destroy();	
		}
		visible = false;
	}
	if sprite_index == sprInvertedThroneFlameStart
		sprite_index = sprInvertedThroneFlameIdle;
}
else
{
	if sprite_index == sprThroneFlameEnd
	{
		if !instance_exists(NuclearThrone1)
		{
			instance_destroy();	
		}
		visible = false;
	}
	if sprite_index == sprThroneFlameStart
		sprite_index = sprThroneFlameIdle;
}
