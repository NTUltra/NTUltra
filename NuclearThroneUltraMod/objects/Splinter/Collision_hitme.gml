if candmg and other.my_health > 0 and other.team != team
{
instance_destroy()

	with other
	{
		snd_play(snd_hurt, hurt_pitch_variation,true)
		my_health -= other.dmg
		sprite_index = spr_hurt
		image_index = 0
		motion_add(other.direction,3)
	}
	if other.my_health > 0
	{
		target = other.id
		/*
		x += (other.x - x)*0.75;
		y += (other.y - y)*0.75;
		with scrBoltTrail(trailColour,0.11,0.75)
		{
			image_speed -= 0.1;
		}*/
		with instance_create(x,y,BoltStick)
		{
			sprite_index = sprSplinterStick
			image_angle = other.image_angle
			target = other.target
		}
	}
}

