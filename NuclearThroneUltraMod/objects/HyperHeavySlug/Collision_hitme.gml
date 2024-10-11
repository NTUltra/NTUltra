if other.team != team
{
	instance_destroy()
	with other
	{
		snd_play(snd_hurt, hurt_pitch_variation,true)
		DealDamage(other.dmg)
		sprite_index = spr_hurt
		image_index = 0
		motion_add(other.direction,10)
		scrForcePosition60fps();
	}
	scrSplashDamage(15,range,false);
}

