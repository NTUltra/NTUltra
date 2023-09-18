if other.team != 2 and other.my_health > 0
{
	with other
	{
		if sprite_index!=spr_hurt
		{
			if alarm[9]<1
				alarm[9]=6;
			else//its already infected well then deal some more damage
				my_health -= 8

			my_health -= 4
			sprite_index = spr_hurt
			image_index = 0
			motion_add(other.direction,2)
			snd_play(snd_hurt, hurt_pitch_variation)

			repeat(8)
			instance_create(x+lengthdir_x(10,random(360))+random(6)-3,
			y+lengthdir_y(10,random(360))+random(6)-3,Curse)

		}
	}
}

