/// @description BOOM
if alarm[0] < 1
{
	with other
	{
		my_health -= 1;
		sprite_index = spr_hurt;
		image_index = 0;
		snd_play(snd_hurt,hurt_pitch_variation);
		if object_index == Player
		{
			hitBy = other.sprite_index;	
		}
	}
	instance_destroy();
}