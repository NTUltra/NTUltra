if place_meeting(x,y,Floor)
	with other
	{
		instance_destroy()
		with instance_create(x,y,FloorExplo) {
			canSpawnSwarm = true;	
		}
	}

