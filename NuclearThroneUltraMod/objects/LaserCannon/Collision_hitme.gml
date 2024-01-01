if other.team != team
{
with other
{
	if sprite_index != spr_hurt
	{
		snd_play(snd_hurt, hurt_pitch_variation)
		my_health -= 2
		sprite_index = spr_hurt
		image_index = 0
		motion_add(point_direction(other.x,other.y,x,y),3)
		BackCont.shake += 2
	}
}
}

