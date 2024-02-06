if other.team != team && other.team != 0
{
	my_health = 0
	snd_play(sndGrenadeStickWall,0.1,true);
	with other
	{
		DealDamage(other.dmg)
		sprite_index = spr_hurt
		image_index = 0
		motion_add(other.direction,6)
	}

}
