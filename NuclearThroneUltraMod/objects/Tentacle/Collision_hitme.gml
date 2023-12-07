if other.team != team and other.my_health > 0//the thing I hit must not be myself
{
	with other//enemy
	{
		if sprite_index != spr_hurt
		{
			snd_play(snd_hurt, hurt_pitch_variation,true)
			instance_create(other.x,other.y,FishBoost)
			my_health -= other.dmg
			sprite_index = spr_hurt
			image_index = 0
			if other.alarm[1] < 1
			{
				snd_play(sndMeatExplo,0,true)
				instance_create(x,y,MeatExplosion);
				with instance_create(x,y,FishBoost)
				{
					motion_add(random(360),3);
				}
				other.bloodDelay += 1;
				other.alarm[1] = other.bloodDelay;
			}
			if team != 0 {
				var pullD = other.direction+180;
				motion_add(pullD,2);
			}
		}
		else
		{
			scrIframeSkipper(0.07);
		}
	}
}
