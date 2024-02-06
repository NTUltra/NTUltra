if other.team != team
{
	with other
	{
		if sprite_index != spr_hurt
			snd_play(snd_hurt, hurt_pitch_variation,true)
		if UberCont.normalGameSpeed == 60
			DealDamage(other.dmg)*0.5;
		else
			DealDamage(other.dmg)
		sprite_index = spr_hurt
		image_index = 0
		motion_add(point_direction(other.x,other.y,x,y),4)
		Sleep(10)
		BackCont.shake += 2
	}
}

