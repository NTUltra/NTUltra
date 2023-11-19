if other.team != team and other.my_health > 0
{//instance_destroy()
	var is60fps = UberCont.normalGameSpeed == 60
	with other
	{
		if sprite_index != spr_hurt
			snd_play(snd_hurt, hurt_pitch_variation,true)
		if (!array_contains(other.hitEntities,id))
		{
			my_health -= ceil(other.dmg*10);
			if my_health > 0
				other.speed -= 1;
		}
		else
		{
			if is60fps
				my_health -= other.dmg * 0.5;
			else
				my_health -= other.dmg;
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