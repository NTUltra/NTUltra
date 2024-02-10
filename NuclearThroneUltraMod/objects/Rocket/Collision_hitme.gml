if other.team != team
{
	if other.team != 0
	{
		instance_destroy()

		with other
		{
			DealDamage(other.dmg)
			sprite_index = spr_hurt
			image_index = 0
			motion_add(other.direction,10)
		}
	}
	else
	{
		with other
		{
			if UberCont.normalGameSpeed == 60
				DealDamage(3);
			else
				DealDamage(6);
			sprite_index = spr_hurt
			image_index = 0
		}
	}
}

