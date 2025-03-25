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
			var bigdmg = d + ceil(clamp(my_health*0.20,d,500));
			BackCont.shake += min(30,bigdmg);
			if bigdmg > 20
				bigDamage = true;
			with Player
			{
				if bigdmg > 100
					snd_play(sndVoidStyle);
				else if bigdmg > 20
					snd_play(sndVoidBlasterBigHit);
							
				bigdmg = max(bigdmg,d);
			}
			DealDamage(bigdmg);
			sprite_index = spr_hurt
			image_index = 0
			motion_add(other.direction,6)
			scrForcePosition60fps();
			if speed > maxSpeed+1
				speed = maxSpeed+1;
		}
	}
}



