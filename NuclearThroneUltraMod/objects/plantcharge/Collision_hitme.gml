if other.team != team
{
	with other
	{
		snd_play(snd_hurt, hurt_pitch_variation,true)
		my_health -= 2
		sprite_index = spr_hurt
		image_index = 0
		motion_add(other.direction,4)
		
	}
	BackCont.shake += 1
}

