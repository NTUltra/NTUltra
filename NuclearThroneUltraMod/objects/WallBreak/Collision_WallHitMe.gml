var c = canSpawnSwarm;
with other
{
	instance_destroy(id)
	with instance_create(x,y,FloorExplo)
	{
		canSpawnSwarm = c;
		if !c
			alarm[3] = 0;
		if other.object_index == WallHitMe
		{
			wantWall = WallHitMe;
			event_perform(ev_alarm,2);	
		}
	}
}

