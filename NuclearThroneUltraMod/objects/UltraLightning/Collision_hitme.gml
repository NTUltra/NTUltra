if other.team != team and other.my_health > 0
{
	with other
	{
		if sprite_index != spr_hurt
		{
			if instance_exists(Player)
			{
			if Player.race=24//Elementor's passive
			my_health -= other.dmg+3;
			else
			my_health -= other.dmg
			}
			sprite_index = spr_hurt
			image_index = 0
			motion_add(other.image_angle,4)
		}
		else
		{
			scrIframeSkipper(other.iframeskip);
		}
	}
	snd_play(other.snd_hurt, other.hurt_pitch_variation,true)
	instance_create(x,y,Smoke)
}

