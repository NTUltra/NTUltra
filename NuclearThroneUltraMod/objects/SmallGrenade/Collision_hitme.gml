if other.team != team
{
	instance_destroy()
	with other
	{
		my_health -= other.dmg;
		sprite_index = spr_hurt
		image_index = 0
		snd_play(snd_hurt, hurt_pitch_variation,true)
		motion_add(other.direction,6)
		scrForcePosition60fps();
		if speed > maxSpeed + 3
			speed = maxSpeed + 3;
	}
}

