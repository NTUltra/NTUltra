var inArray = array_contains(hitEntities,other.id)
if other.team != team && (!inArray || other.sprite_index != other.spr_hurt)
{
	if !inArray
		hitEntities[array_length(hitEntities)] = other.id;
	alarm[1] = hitDelay;
	with other
	{
		if sprite_index != spr_hurt
		{
			snd_play(snd_hurt, hurt_pitch_variation)
			my_health -= other.dmg
			sprite_index = spr_hurt
			image_index = 0
			motion_add(other.direction,8)
			Sleep(other.sleepRate+size*10)
			BackCont.shake += 5
		}
		motion_add(other.direction,8)
	}
	image_speed = is;
}


