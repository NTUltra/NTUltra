if other.team != team and other.my_health > 0 && !array_contains(hitEntities,other.id)
{
	hitEntities[array_length(hitEntities)] = other.id;
	BackCont.shake += 2
	with other
	{
		if sprite_index!=spr_hurt
		{
			DealDamage(other.dmg)
			sprite_index = spr_hurt
			snd_play(snd_hurt, hurt_pitch_variation)
			image_index = 0
		}
		else
		{
			scrIframeSkipper(0.1);
		}
		motion_add(other.direction,4)
	}
}

