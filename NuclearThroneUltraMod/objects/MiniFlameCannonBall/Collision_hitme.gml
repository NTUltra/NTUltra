if other.team != team and other.my_health > 0
{
	instance_destroy();
	with other
	{
	if object_index!=Player
		my_health -= other.dmg
	else if sprite_index != spr_hurt
	{
		my_health -= 3
		hitBy = other.sprite_index;
	}

	sprite_index = spr_hurt
	image_index = 0
	motion_add(other.direction,8)
	}
snd_play(other.snd_hurt, other.hurt_pitch_variation,true)

}



