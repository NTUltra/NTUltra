/// @description popo vans
totalEnemyHealth = 0;
with enemy
{
	if object_index != IDPDVan && object_index != IDPDVanVertical
		other.totalEnemyHealth = other.totalEnemyHealth + min(maxhealth, my_health)
}
maxEnemyHealth = max(maxEnemyHealth, totalEnemyHealth);
if totalEnemyHealth < max(200, (maxEnemyHealth - (maxEnemyHealth/wantVanAmount)))
{
	var spawnedVan = false;
	if instance_exists(Player)
	{
		var getFreaky = false;
		if Player.loops > 2
			getFreaky = wantVanAmount % 3 == clamp(Player.subarea-1,0,2);
	
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
}
else
{
	alarm[2] = 60;	
}