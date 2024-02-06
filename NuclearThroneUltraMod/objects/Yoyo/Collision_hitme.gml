if other.team != team
{	with other
	{
		if sprite_index != spr_hurt
		{
			with other
			{
				x -= hspeed;
				y -= vspeed;
				speed -= 1;
				scrForcePosition60fps();
			}
			snd_play(snd_hurt, hurt_pitch_variation)
			DealDamage(other.dmg)//6
			sprite_index = spr_hurt
			image_index = 0
			motion_add(other.direction,6);
			BackCont.shake += 2
		}
		else
		{
			scrIframeSkipper(0.05);
		}
	}
}

