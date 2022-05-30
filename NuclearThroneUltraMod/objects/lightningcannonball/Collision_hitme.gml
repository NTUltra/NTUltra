if other.team != team and other.my_health > 0
{
	with other
	{
		snd_play(snd_hurt, hurt_pitch_variation,true)
		my_health -= other.dmg
		sprite_index = spr_hurt
		image_index = 0
		motion_add(other.image_angle,4)
	}
	instance_destroy();
}
