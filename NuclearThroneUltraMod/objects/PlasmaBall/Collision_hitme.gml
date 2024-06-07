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
			motion_add(other.direction,4)
			if speed > maxSpeed + 2
				speed = maxSpeed + 2;
			snd_play(snd_hurt, hurt_pitch_variation,true)
			if object_index == Player
				hitBy = other.sprite_index;
		}
	}
	else
	{
		with other
			scrIframeSkipper(0.2);
	}
}