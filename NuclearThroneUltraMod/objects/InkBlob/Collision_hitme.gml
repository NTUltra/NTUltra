if other.team != team and other.my_health > 0
{
	var is = inkSplat;
	with other
	{
		if sprite_index != spr_hurt {
			DealDamage(other.dmg)
			sprite_index = spr_hurt
			image_index = 0
			snd_play(snd_hurt, hurt_pitch_variation,true)
			speed = 0;
			walk = 0;
			with instance_create(x,y,BloodStreak)
			{
				image_angle = random(360);
				sprite_index = is;
				image_xscale = 0.9;
				image_yscale = 0.8;
			}
		}
		if UberCont.normalGameSpeed == 60
		{
			speed *= 0.5;
		}
		else
		{
			speed *= 0.25;
		}
	}
	
}