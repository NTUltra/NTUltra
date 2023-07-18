var c = canSpawnSwarm;
with other
{
	instance_destroy(id)
	with instance_create(x,y,FloorExplo)
	{
		canSpawnSwarm = c;
		if !c
			alarm[3] = 0;
	}
}

