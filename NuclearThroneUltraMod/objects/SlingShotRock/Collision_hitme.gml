if other.team != team
{
	instance_destroy()
	with other
	{
		DealDamage(other.dmg);
		snd_play(snd_hurt, hurt_pitch_variation,true)
		sprite_index = spr_hurt
		image_index = 0
		motion_add(other.direction,6);
		scrForcePosition60fps();
	}
}

