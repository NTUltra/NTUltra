with other
{
	instance_destroy(id)
	with instance_create(x,y,FloorExplo)
	{
		with instance_create(x,y,ImpactFX)
		{
			sprite_index = sprHammerHead;
		}
	}
}

