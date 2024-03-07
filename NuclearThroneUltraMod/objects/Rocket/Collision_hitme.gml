if other.team != team
{
	if other.team != 0 || other.object_index == IDPDVan || other.object_index == IDPDVanVertical
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
				DealDamage(4);
			else
				DealDamage(8);
			sprite_index = spr_hurt
			image_index = 0
		}
	}
}

