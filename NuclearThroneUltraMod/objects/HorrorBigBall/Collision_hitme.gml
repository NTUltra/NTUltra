if other.team != team && other.my_health > 0 && !array_contains(hitEntities, other.id)
{
	hitEntities[array_length(hitEntities)] = other.id;
	with other
	{
		my_health -= other.dmg * other.myPower;
		if sprite_index != spr_hurt
		{
			snd_play(snd_hurt, hurt_pitch_variation,true)	
		}
		sprite_index = spr_hurt
		image_index = 0
		motion_add(other.direction,4);
	}
	myPower -= 1;
	if myPower < 1
		instance_destroy();
}

