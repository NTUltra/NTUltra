if other.team != team and other.my_health > 0 && other.team!=2
{
	with other
	{
		if sprite_index != spr_hurt
		{
			if instance_exists(Player)
			{
			if Player.race=24//Elementor's passive
			my_health -= other.dmg+1;
			else
			my_health -= other.dmg

			if Player.skill_got[17] && team == 2
				snd_play(sndSpark2);
			else
				snd_play(sndSpark1);
			}
			else
				snd_play(sndSpark1);
			sprite_index = spr_hurt
			image_index = 0
			motion_add(other.image_angle,4)
			snd_play(snd_hurt, hurt_pitch_variation,true)
			instance_create(x,y,Smoke)
		}
		else
		{
			scrIframeSkipper(other.iframeskip);
		}
	}

}
else if other.team=2 && other.my_health > 0 && other.team!= team
{//Player damage
		//ENEMY LIGHTNING
	with other
	{
		if sprite_index != spr_hurt
		{
		my_health -= 3
		sprite_index = spr_hurt
		image_index = 0
		snd_play(snd_hurt, hurt_pitch_variation,true)
		motion_add(other.image_angle,4)
		}
	}
	Sleep(4);
	instance_create(x,y,Smoke);
}

