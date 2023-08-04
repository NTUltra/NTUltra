if candmg and other.team != team
{
	if other.my_health > 0 && !array_contains(hitEntities,other.id)// other.sprite_index != other.spr_hurt)//other.sprite_index != other.spr_hurt
	{
		hitEntities[array_length(hitEntities)] = other.id;
		with other
		{
			snd_play(snd_hurt, hurt_pitch_variation,true)
			my_health -= other.dmg;
			sprite_index = spr_hurt
			image_index = 0
			motion_add(other.direction,6)
		}
	}
}

