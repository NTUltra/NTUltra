if other.team != team and other.my_health > 0
{
	scrPlasmaPush();
	if other.sprite_index != other.spr_hurt
	{
		BackCont.shake += 2
		image_xscale-=0.35;
		image_yscale-=0.35;
		Sleep(4);
		with other
		{

			my_health -= other.dmg
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
