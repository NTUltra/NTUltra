if other.team != team and other.my_health > 0 && alarm[3] < 1
{
	BackCont.shake += 2
	image_xscale-=0.1;
	image_yscale-=0.1;
	with other
	{
		if sprite_index!=spr_hurt
		{
			my_health -= other.dmg
			sprite_index = spr_hurt
			snd_play(snd_hurt, hurt_pitch_variation)
			image_index = 0
		}
		else
		{
			image_index += 0.2;//iframe skipper
		}
		motion_add(other.direction,4)
	}
	alarm[3] = 3;
}

