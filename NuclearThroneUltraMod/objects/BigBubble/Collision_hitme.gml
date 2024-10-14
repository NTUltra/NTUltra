if other.team != team
{
	instance_destroy()
	with instance_create(x,y,AnimDestroyTop)
	{
		sprite_index = other.sprite_index;
		image_angle = other.image_angle;
		image_index = max(other.image_index,image_number - 3);
	}
	with other
	{
		DealDamage(other.dmg)
		sprite_index = spr_hurt
		image_index = 0
		motion_add(other.direction,4)
		snd_play(snd_hurt, hurt_pitch_variation,true)
	}
}

