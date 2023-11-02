if other.team != team
{
	mask_index = mskPickupThroughWall;
	with other
	{
		if sprite_index != spr_hurt
			snd_play(snd_hurt, hurt_pitch_variation,true)
		my_health -= other.dmg
		sprite_index = spr_hurt
		image_index = 0
		motion_add(other.direction,3.5)
		scrForcePosition60fps();
		if speed > maxSpeed 
			speed = maxSpeed;
	}
	lp += 0.25;
}

