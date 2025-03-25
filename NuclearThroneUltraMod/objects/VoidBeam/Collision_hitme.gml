if other.team != team
{
	with other
	{
		if sprite_index != spr_hurt
		{
			snd_play(snd_hurt, hurt_pitch_variation,true);
			sprite_index = spr_hurt
			image_index = 0
			BackCont.shake += 2
		}
		if UberCont.normalGameSpeed == 60
			DealDamage(other.dmg * 0.5, true);
		else
			DealDamage(other.dmg, true);
	}
}