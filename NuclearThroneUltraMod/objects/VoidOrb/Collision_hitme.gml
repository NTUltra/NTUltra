if other.team != team and other.my_health > 0
{
	var d = dmg;
	var dM = 1;
	if UberCont.normalGameSpeed == 60
		dM = 0.5;
	with other
	{
		if object_index == Player
		{
			if sprite_index != spr_hurt
			{
				hitBy = other.sprite_index;
				DealDamage(5)
				sprite_index = spr_hurt
				image_index = 0
				Sleep(20);
				motion_add(other.direction,6)
			}
		}
		else
		{
			if sprite_index != spr_hurt
			{
				snd_play(snd_hurt, hurt_pitch_variation,true);
				sprite_index = spr_hurt
				image_index = 0
			}
			DealDamage(d * dM,true);
			motion_add(other.direction,6)
			scrForcePosition60fps();
			if speed > maxSpeed+1
				speed = maxSpeed+1;
		}
	}
}



