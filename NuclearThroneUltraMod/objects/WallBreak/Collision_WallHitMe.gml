var c = canSpawnSwarm;
with other
{
	instance_destroy()
	with instance_create(x,y,FloorExplo)
	{
		canSpawnSwarm = c;
		if !c
			alarm[3] = 0;
	}
}

