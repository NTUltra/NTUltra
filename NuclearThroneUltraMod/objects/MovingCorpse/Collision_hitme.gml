var impactWrist = impactWristed;
if (other.team != 2 && (mySize >= other.mySize-1 or impactWrist) and speed > 2)
{
	if (other.sprite_index != other.spr_hurt)
	{
		if instance_exists(Player)
		{
			if Player.ultra_got[52] == 1 && random(10) < 3
			{
				snd_play(sndMeatExplo,0.1,true);
				snd_play(sndExplosionS,0.1,true);
				instance_create(x,y,MeatExplosion);
			}
			if point_distance(Player.x,Player.y,other.x,other.y) > 350
				dmg *= 0.5;
		}
	
		with other
		{
			my_health -= max(1,floor(other.dmg+(other.mySize*0.25)+other.speed/5))
			if instance_exists(Player)
			{
				if impactWrist
				{
					instance_create(x,y,ImpactFX);
					if my_health <= 0
						snd_play(sndImpWristKill,0.05,true);
					else
						snd_play(sndImpWristHit,0.05,true);
				}
			}
			sprite_index = spr_hurt
			image_index = 0
			motion_add(other.direction,other.speed*0.25)//0.35
			snd_play(snd_hurt, hurt_pitch_variation)
		}
		speed *= 0.4;
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

