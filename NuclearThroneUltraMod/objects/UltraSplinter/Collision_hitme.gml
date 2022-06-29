if speed > 0 and other.my_health > 0 and other.team != team
{
snd_play(other.snd_hurt, other.hurt_pitch_variation,true)
instance_destroy()

	with other
	{
	my_health -= other.dmg
	sprite_index = spr_hurt
	image_index = 0
	motion_add(other.direction,3)
	}
	target = other.id
	with instance_create(x,y,BoltStick)
	{
	sprite_index = sprSplinterStick
	image_angle = other.image_angle
	target = other.target
	}

}

