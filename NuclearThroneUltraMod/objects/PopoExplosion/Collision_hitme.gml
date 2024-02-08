if other.team != team && other.team != 2
{
	with other
	{
		snd_play(snd_hurt, hurt_pitch_variation)
		if UberCont.normalGameSpeed == 60
			DealDamage(other.dmg,true,false);
		else
			DealDamage(other.dmg,true,false)
		sprite_index = spr_hurt
		image_index = 0
		motion_add(point_direction(other.x,other.y,x,y),6)
		Sleep(5)
		BackCont.shake += 2
	}
}

