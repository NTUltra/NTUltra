if other.team != team && other.team != 2
{
	with other
	{
		snd_play(snd_hurt, hurt_pitch_variation)
		if UberCont.normalGameSpeed == 60
		{
			my_health -= other.dmg*0.5;
			if alarm[1] > 0
			{
				alarm[1] += 1;
			}
			walk = 0;
		}
		else
		{
			my_health -= other.dmg
			if alarm[1] > 0
			{
				alarm[1] += 2;	
			}
			walk = 0;
		}
		sprite_index = spr_hurt
		image_index = 0
		motion_add(point_direction(other.x,other.y,x,y),5)
		Sleep(5)
		BackCont.shake += 2
		
	}
}