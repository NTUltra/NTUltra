if other.team != team
{
	if other.team != 0
	{
		instance_destroy()

		with other
		{
			my_health -= other.dmg
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
				my_health -= 2;
			else
				my_health -= 4;
			sprite_index = spr_hurt
			image_index = 0
		}
	}
}

