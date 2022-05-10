if other.team != team and other.my_health > 0
{
	scrPlasmaPush();
	if other.sprite_index != other.spr_hurt
	{
		BackCont.shake += 0.5
		image_xscale-=0.35;
		image_yscale-=0.35;
		with other
		{
			my_health -= other.dmg
			sprite_index = spr_hurt
			image_index = 0
			snd_play(snd_hurt, hurt_pitch_variation,true)
			motion_add(other.direction,4)
		}
	}
	else
	{
		other.image_index += 0.2;//iframe skipper
	}

}

