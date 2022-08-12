if other.team != other.team && team != 2
{
	with other
	{
		snd_play(snd_hurt, hurt_pitch_variation)
		my_health -= 9//9 to 27 in retail = 8 to 16
		sprite_index = spr_hurt
		image_index = 0
		motion_add(point_direction(other.x,other.y,x,y),6)
		Sleep(5)
		BackCont.shake += 2
	}
}