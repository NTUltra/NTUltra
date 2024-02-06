if other.team != team and other.my_health > 0
{
	if other.sprite_index != other.spr_hurt
	{
		scrPlasmaPush();
		with other
		{
			DealDamage(other.dmg)
			sprite_index = spr_hurt
			image_index = 0
			scrForcePosition60fps();
			motion_add(other.direction,6)
			if speed > maxSpeed + 2
				speed = maxSpeed + 2;
			snd_play(snd_hurt, hurt_pitch_variation,true)
		}
	}
	else
	{
		with other
			scrIframeSkipper(0.2);
	}
}