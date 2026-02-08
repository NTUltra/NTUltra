if other.team != team
{
	var inArray = array_contains(hitEntities,other.id)
	if (!inArray || other.sprite_index != other.spr_hurt)
	{
		if alarm[1] < 1
		{
			if !inArray
				hitEntities[array_length(hitEntities)] = other.id;
			var me = id;
			with other
			{
				snd_play(snd_hurt, hurt_pitch_variation)
				DealDamage(other.dmg)
				sprite_index = spr_hurt
				image_index = 0
				motion_add(other.direction,12)
				BackCont.shake += 2
				if object_index == Player
				{
					hitBy = other.sprite_index;
					other.hit = true;
				}
				with instance_create(x,y,Venom)
				{
					rate = 6;
					amount = 7;
					scrCopyWeaponMod(me);
					team = me.team;
					owner = other
				}
			}
			with instance_create(other.x,other.y,AcidStreak)
			{
				motion_add(other.bleedAngle + random_range(10,-10),4);
				image_angle = direction;
			}
			alarm[1] = hitDelay;
		}
		else
		{
			alarm[1] = 1;	
		}
	}
}

