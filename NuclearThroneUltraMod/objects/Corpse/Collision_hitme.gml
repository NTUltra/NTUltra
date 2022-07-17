var impactWrist = impactWristed;
if (other.team != 2 && (size >= other.size-1 or impactWrist) and speed > 2)
{
	if (other.sprite_index != other.spr_hurt)
	{
		if instance_exists(Player)
		{
			if Player.ultra_got[52] == 1 && random(10) < 6
			{
				snd_play(sndMeatExplo,0.1,true);
				snd_play(sndExplosionS,0.1,true);
				instance_create(x,y,MeatExplosion);
			}
		}
	
		with other
		{
			my_health -= round(other.dmg+(other.size*0.25)+other.speed/5)
			if instance_exists(Player)
			{
				if impactWrist
				{
					if my_health <= 0
						snd_play(sndImpWristKill,0.05,true);
					else
						snd_play(sndImpWristHit,0.05,true);
				}
			}
			sprite_index = spr_hurt
			image_index = 0
			motion_add(other.direction,other.speed*0.5)
			snd_play(snd_hurt, hurt_pitch_variation)
		}
		Sleep(2*size)
		speed *= 0.5
	}
	else
	{
		if impactWristed
		{
			with other
				scrIframeSkipper(0.2);
		}
	}
}

