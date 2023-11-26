/// @description Hit
if other.team != team and other.my_health > 0
{
	with other
	{
		snd_play(snd_hurt, hurt_pitch_variation)
		my_health -= other.dmg
		sprite_index = spr_hurt
		image_index = 0
		motion_add(other.direction,4);
		if other.object_index == Player {
			hitBy = other.sprite_index;
		}
	}
	instance_destroy()
}

