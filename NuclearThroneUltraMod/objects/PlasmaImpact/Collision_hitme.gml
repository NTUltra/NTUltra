if other.team != team
{
	with other
	{
		snd_play(snd_hurt, hurt_pitch_variation)
		if UberCont.normalGameSpeed == 60
			my_health -= other.dmg*0.5;
		else
			my_health -= other.dmg
		sprite_index = spr_hurt
		image_index = 0
		motion_add(point_direction(other.x,other.y,x,y),2)
		BackCont.shake += 2
	}
}

