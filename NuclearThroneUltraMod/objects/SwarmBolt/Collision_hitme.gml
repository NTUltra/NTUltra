if speed > 1 and other.team != team
{
	with other
	{
		if sprite_index != spr_hurt
		{
			my_health -= other.dmg
			sprite_index = spr_hurt
			image_index = 1;
			motion_add(other.direction,4)
			if speed > maxSpeed
				speed = maxSpeed;
			other.hits-=1;
			snd_play(snd_hurt, hurt_pitch_variation,true)
		}
		else
		{
			scrIframeSkipper(0.1);
		}
    }
	if hits<1
		instance_destroy();
}

