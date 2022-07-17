/// @description BOOM
if other.team != team
{
	with other
	{
		if sprite_index != spr_hurt
		{
			Sleep(5);
			snd_play(snd_hurt, hurt_pitch_variation)
			my_health -= other.dmg//6
			sprite_index = spr_hurt
			image_index = 0
			motion_add(other.direction,4)
			BackCont.shake += 2
			snd_play(sndExplosion);
			instance_create(other.x,other.y,Explosion);
		}
		else
		{
			scrIframeSkipper(0.2);
		}
	}
}

