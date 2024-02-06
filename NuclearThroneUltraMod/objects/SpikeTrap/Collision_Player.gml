with other
{
	if sprite_index != spr_hurt
	{
		DealDamage(4);
		sprite_index = spr_hurt
		image_index = 0
		snd_play(snd_hurt, hurt_pitch_variation);
		with other
		{
			instance_destroy();	
		}
	}
}