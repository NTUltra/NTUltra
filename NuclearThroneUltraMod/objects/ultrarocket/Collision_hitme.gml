if other.team != team
{
	var actualDmg =	scrCalculateFinalDamage(dmg);
	if other.my_health >= actualDmg * 0.5
		instance_destroy();
	with other
	{
		DealDamage(other.dmg)
		sprite_index = spr_hurt
		image_index = 0
		motion_add(other.direction,10)
	}
}

