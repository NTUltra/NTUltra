if other.team != team and other.my_health > 0 && (other.team!=2 || image_index<5/*not player or before this frame*/)
{
	if other.sprite_index != other.spr_hurt
	{
		if !audio_is_playing(sndBurn)
		snd_play(sndBurn,0.01)

		with other
		{
			if other.team!=2&&other.sprite_index=sprFireLilHunter//infamous blue fire
				my_health-=1
			else
			{
				my_health -= other.dmg;
				sprite_index = spr_hurt
				image_index = 0;
			}

			motion_add(other.direction,0.5)

			if alarm[11]>0//frozen
			{
				with Player
				{
					if race = 24
						scrUnlockBSkin(24,"FOR BURNING AN ENEMY#THAT IS FROZEN AS ELEMENTOR",0);
				}
			}
			snd_play(snd_hurt, hurt_pitch_variation,true)
		}

		if team!=2
			instance_destroy();
	}
	else if other.team != 2
	{
		with other
			scrIframeSkipper(0.05);
	}
	x += (other.x-x)*0.25+random(6)-3
	y += (other.y-y)*0.25+random(6)-3
	speed *= 0.8
}