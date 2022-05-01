if other.team != team && !hit && other.sprite_index != other.spr_hurt
{
	hit = true;
	with other
	{
		snd_play(snd_hurt, hurt_pitch_variation)
		my_health -= other.dmg
		sprite_index = spr_hurt
		image_index = 0
		motion_add(other.direction,16)
		Sleep(100)
		BackCont.shake += 8
	}
}

