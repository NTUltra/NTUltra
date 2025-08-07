if other.team != team && other.my_health > 0 && !array_contains(hitEntities, other.id)
{
	hitEntities[array_length(hitEntities)] = other.id;
	with other
	{
		if object_index == Player
		{
			BackCont.shake += 20;
			Sleep(100);
			hitBy = other.sprite_index;
			if alarm[3] > 0
			{
				alarm[3] = 0;
				snd_hurt = snd_hurt_actual;
				if other.myPower > 12
					DealDamage(2)
				else
					DealDamage(1);
			}
			else
			{
				DealDamage(max(1,floor(other.dmg * other.myPower)));
			}
		}
		else if sprite_index != spr_hurt
		{
			DealDamage(max(1,floor(other.dmg * other.myPower)));

		}
		else
		{
			DealDamage(1);
		}
		snd_play(snd_hurt, hurt_pitch_variation,true)	
		sprite_index = spr_hurt
		image_index = 0
		motion_add(other.direction,4);
	}
	myPower -= 1;
	if myPower < 1
	{
		image_xscale -= 0.05;
		image_yscale -= 0.05;
		if image_xscale < 0.1
			instance_destroy();
	}
}

