if other.team != team
{
	with other
	{
		if sprite_index != spr_hurt
			snd_play(snd_hurt, hurt_pitch_variation,true)
		my_health -= other.dmg
		sprite_index = spr_hurt
		image_index = 0
		motion_add(other.direction,4)
		
	}
	BackCont.shake += 2
}

