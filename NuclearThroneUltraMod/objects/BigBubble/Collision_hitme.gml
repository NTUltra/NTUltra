if other.team != team
{
	instance_destroy()
	
	with other
	{
		DealDamage(other.dmg)
		sprite_index = spr_hurt
		image_index = 0
		motion_add(other.direction,4)
		snd_play(snd_hurt, hurt_pitch_variation,true)
	}
}

