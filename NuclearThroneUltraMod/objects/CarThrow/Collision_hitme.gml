if other.team != team
{
	if dmg > 0
	{
		snd_play(snd_hurt, hurt_pitch_variation,true)
		DealDamage(other.dmg);
		sprite_index = spr_hurt
		image_index = 0
	}
	instance_destroy()
}

