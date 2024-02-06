if other.team != team
{
with other
{
	if sprite_index != spr_hurt
	{
		snd_play(snd_hurt, hurt_pitch_variation)
		if UberCont.normalGameSpeed == 60
			DealDamage(1);
		else
			DealDamage(2)
		sprite_index = spr_hurt
		image_index = 0
		motion_add(point_direction(other.x,other.y,x,y),3)
		Sleep(5)
		BackCont.shake += 2
	}
}
}

