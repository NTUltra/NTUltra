var inArray = array_contains(hitEntities,other.id)
if other.team != team && (!inArray || other.sprite_index != other.spr_hurt)
{
	if !inArray
		hitEntities[array_length(hitEntities)] = other.id;
	alarm[1] = hitDelay;
	var t = team;
	with other
	{
		if sprite_index != spr_hurt
		{
			with instance_create(x,y,Flame)
			{
				team = t;
			}
			snd_play(snd_hurt, hurt_pitch_variation)
			my_health -= other.dmg
			sprite_index = spr_hurt
			image_index = 0
			motion_add(other.direction,8)
			
			BackCont.shake += 6
		}
	}
}

