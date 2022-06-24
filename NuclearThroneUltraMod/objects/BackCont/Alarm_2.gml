/// @description popo vans

var spawnedVan = false;
if instance_exists(Player)
{
	var getFreaky = false;
	if Player.loops > 1
		getFreaky = wantVanAmount - Player.subarea % 3 == 0;
	
	if (verticalVans && wantVanAmount % 2 == 0) //EVEN
	{
		var xx = Player.x + random_range(-48,48);
		var yy = Player.y + choose(-250,250);
		var spawnfloor = instance_nearest(xx,yy,Floor);
		if instance_exists(spawnfloor)
		{
			with instance_create(spawnfloor.x + 16,spawnfloor.y + 16,VanSpawn)
			{
				vertical = true;
				dropFreaks = getFreaky;
			}
			spawnedVan = true;
			wantVanAmount --;
		}
	}
	else
	{
		var xx = Player.x + choose(-250,250);
		var yy = Player.y + random_range(-48,48);
		var spawnfloor = instance_nearest(xx,yy,Floor);
		if instance_exists(spawnfloor)
		{
			with instance_create(spawnfloor.x + 16,spawnfloor.y + 16,VanSpawn)
			{
				dropFreaks = getFreaky;
			}
			spawnedVan = true;
			wantVanAmount --;
		}
	}
}
if (wantVanAmount > 0)
{
	alarm[2] = vanDelay + irandom(vanDelayRandom);//minimum delay between vans
}