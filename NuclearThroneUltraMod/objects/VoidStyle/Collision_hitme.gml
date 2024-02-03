if other.team != team
{
	with other
	{
		if sprite_index != spr_hurt
			snd_play(snd_hurt, hurt_pitch_variation,true);
		if UberCont.normalGameSpeed == 60
		{
			my_health -= other.dmg * 0.5
			BackCont.shake += 1
		}
		else
		{
			my_health -= other.dmg
			BackCont.shake += 2
		}
		sprite_index = spr_hurt
		image_index = 0
		speed = 0;
	}
}

