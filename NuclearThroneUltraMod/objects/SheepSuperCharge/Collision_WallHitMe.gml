/// @description Fuck up the walls
if forcePlayer
	with other
	{
		instance_destroy(id)
		instance_create(x,y,FloorExplo)
	}