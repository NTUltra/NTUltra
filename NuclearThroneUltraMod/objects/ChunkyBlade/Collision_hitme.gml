if other.team != team
{
	with other
	{
		if sprite_index != spr_hurt
		{
			if object_index == Player
				hitBy = other.sprite_index;
			Sleep(5);
			snd_play(snd_hurt, hurt_pitch_variation)
			DealDamage(other.dmg)//6
			sprite_index = spr_hurt
			image_index = 0
			motion_add(other.direction,6)
			BackCont.shake += 2
		}
		else
		{
			scrIframeSkipper(0.2);
		}
	}
}

