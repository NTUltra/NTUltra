if other.team != team
{
    with other
    {
	    if sprite_index != spr_hurt
	    {
		    snd_play(snd_hurt, hurt_pitch_variation)
		    DealDamage(other.dmg)//6
		    sprite_index = spr_hurt
		    image_index = 0
		    motion_add(other.direction,4)
			if instance_exists(Player) && Player.skill_got[17] = 1// && !audio_is_playing(sndMorphStart)
				snd_play(sndMorphStart,0.1,true,true);
			else// if !audio_is_playing(sndMorphStop)
				snd_play(sndMorphStop,0.1,true,true);
	
			with instance_create(x,y,Morph)
			{
				direction = other.direction;
				speed = 0.25;
				team = other.team;
			}
	    }
		else
		{
			scrIframeSkipper(0.2);
		}
    }
}

