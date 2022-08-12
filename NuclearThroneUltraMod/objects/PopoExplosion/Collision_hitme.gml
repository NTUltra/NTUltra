if other.team != team && other.team != 2
{
	with other
	{
		var immune;
		immune = 0
		snd_play(snd_hurt, hurt_pitch_variation)
		my_health -= other.dmg
		sprite_index = spr_hurt
		image_index = 0
		motion_add(point_direction(other.x,other.y,x,y),6)
		Sleep(5)
		BackCont.shake += 2
	}
}

