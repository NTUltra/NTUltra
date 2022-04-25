if speed > 1 and other.team != team
{

	with other
	{
		if sprite_index != spr_hurt
		{
			my_health -= other.dmg
			sprite_index = spr_hurt
			image_index = 1;
			motion_add(other.direction,4)
			other.hits-=1;
			snd_play(snd_hurt, hurt_pitch_variation)
			with other{
				motion_add(direction+180,4);
			}
		}
		else
		{
			image_index += 0.3;//iframe skipper
		}
    }

}

