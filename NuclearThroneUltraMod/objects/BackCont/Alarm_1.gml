/// @description popo

if instance_exists(Player) and !instance_exists(GenCont) and !instance_exists(LevCont)
{
	totalEnemyHealth = 0;
	with enemy
	{
		if object_index != IDPDVan && object_index != IDPDVanVertical
			other.totalEnemyHealth = other.totalEnemyHealth + min(maxhealth, my_health)
	}
	maxEnemyHealth = max(maxEnemyHealth, totalEnemyHealth);
	if totalEnemyHealth < max(200, (maxEnemyHealth - (maxEnemyHealth/canSpawnPopoThisManyTimes)))
	{
		spawnedThisManyPopo ++ ;
		//chance that idpd stop spawning
		if spawnedThisManyPopo < canSpawnPopoThisManyTimes
			alarm[1] = 1000 - min(90,loops*10) + irandom(90);//500
	
		var numEn = 0;
		with enemy
		{
			if team != 2 && object_index != IDPDVan && object_index != IDPDVanVertical
			{
				numEn ++;
			}
		}
		if  (numEn > 3)
		{
			repeat(min(7,loops))    
			instance_create(Player.x,Player.y,IDPDSpawn)        

			if scrIsCrown(16)//crown of popo
			{
				repeat(min(1+loops,4)) 
				instance_create(Player.x,Player.y,IDPDSpawn)
			}
		}
	}
	else
	{
		alarm[1] = 120;	
	}
}

