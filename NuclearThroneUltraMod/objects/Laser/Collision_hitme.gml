if other.team != team and other.my_health > 0
{
	with other
	{
		if sprite_index != spr_hurt
			snd_play(snd_hurt, hurt_pitch_variation,true)
		if UberCont.normalGameSpeed == 60
			DealDamage(other.dmg * 0.5, true);
		else
			DealDamage(other.dmg,true);
		
		sprite_index = spr_hurt
		image_index = 0
		motion_add(other.image_angle,4)
		if speed > maxSpeed+1
			speed = maxSpeed+1;
	}
	instance_create(x,y,Smoke)
}

