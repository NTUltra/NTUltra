if other.team != team and other.my_health > 0
{//instance_destroy()
	var is60fps = UberCont.normalGameSpeed == 60
	with other
	{
		if sprite_index != spr_hurt
			snd_play(snd_hurt, hurt_pitch_variation,true)
		if (!array_contains(other.hitEntities,id))
		{
			DealDamage(ceil(other.dmg*8));
			if my_health > 0
				other.speed -= 1;
		}
		else
		{
			if is60fps
				DealDamage(other.dmg * 0.5, true);
			else
				DealDamage(other.dmg, true);
			with other
			{
				if is60fps
					speed += 0.8;
				else
					speed += 1.6;
			}
		}
		
		sprite_index = spr_hurt
		image_index = 0
	}
	hitEntities[array_length(hitEntities)] = other.id;
}