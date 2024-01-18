if other.team != team
{
	if sticky == 1
	{
		if speed > 0
			snd_play(sndGrenadeStickWall)
		speed = 0
		stickTarget = other.id;
		other.speed *= 0.5;
		x = other.x+offx
		y = other.y+offy
	}
	else
	{
		instance_destroy()
		with other
		{
			my_health -= other.dmg;
			snd_play(snd_hurt, hurt_pitch_variation,true)
			sprite_index = spr_hurt
			image_index = 0
			motion_add(other.direction,other.knockback);
			scrForcePosition60fps();
		}
	}
}

