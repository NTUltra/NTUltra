if candmg and other.team != team
{
	if other.my_health > 0
	{
		with other
		{
			if sprite_index != spr_hurt
				snd_play(snd_hurt, hurt_pitch_variation,true);
			if UberCont.normalGameSpeed == 60
				DealDamage(other.dmg)*0.5;
			else
				DealDamage(other.dmg);
			sprite_index = spr_hurt
			image_index = 0
			motion_add(point_direction(other.x,other.y,x,y),3)
		}
	}
}

