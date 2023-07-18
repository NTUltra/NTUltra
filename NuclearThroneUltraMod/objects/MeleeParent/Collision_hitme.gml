var inArray = array_contains(hitEntities,other.id)
if other.team != team && (!inArray || other.sprite_index != other.spr_hurt)
{
	if alarm[1] < 1
	{
		if !inArray
			hitEntities[array_length(hitEntities)] = other.id;
		event_user(0);
		with other
		{
			snd_play(snd_hurt, hurt_pitch_variation,true)
			my_health -= other.dmg
			sprite_index = spr_hurt
			image_index = 0
			motion_add(other.direction,other.knockback)
			if speed > maxSpeed+1
				speed = maxSpeed+1;
		
		}
		BackCont.shake += shk;
		alarm[1] = hitDelay;
	}
	else
	{
		alarm[1] = 1;	
	}
}

