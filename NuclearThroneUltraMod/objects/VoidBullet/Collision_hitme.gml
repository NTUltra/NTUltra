if other.team != team and other.my_health > 0
{
	var d = dmg;
	instance_destroy()
	with other
	{
		if object_index == Player
		{
			if sprite_index != spr_hurt
			{
				hitBy = other.sprite_index;
				DealDamage(other.dmg)
				sprite_index = spr_hurt
				image_index = 0
				Sleep(20);
				motion_add(other.direction,6)
			}
		}
		else
		{
			snd_play(snd_hurt, hurt_pitch_variation,true)
			if other.owner.object_index == Player
			{
				var bigdmg = clamp(maxhealth*0.15,d,500);
				with Player
				{
					var cost = (bigdmg * 0.15) - 1;
					if cost > 1
					{
						if bigdmg > 100
							snd_play(sndVoidStyle);
						else
							snd_play(sndVoidBlasterBigHit);
							
						BackCont.shake += cost;
						Sleep(round(cost));
						if ammo[4] - cost <= 0
							bigdmg *= 0.5;
						else
							ammo[4] -= cost;
						
					}
					bigdmg = max(bigdmg,d);
				}
				DealDamage(bigdmg);
			}
			else
			{
				DealDamage(d);
			}
			sprite_index = spr_hurt
			image_index = 0
			motion_add(other.direction,6)
			scrForcePosition60fps();
			if speed > maxSpeed+1
				speed = maxSpeed+1;
		}
	}
}



