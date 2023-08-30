/// @description popo

if instance_exists(Player) and !instance_exists(GenCont) and !instance_exists(LevCont)
{
	spawnedThisManyPopo ++ ;
	//chance that idpd stop spawning
	if spawnedThisManyPopo < canSpawnPopoThisManyTimes
		alarm[1] = 1000 - min(100,loops*10) + irandom(90);//500

	if  (instance_number(enemy) - instance_number(IDPDVan) > 3)
	{
		repeat(min(8,loops))    
		instance_create(Player.x,Player.y,IDPDSpawn)        

		if scrIsCrown(16)//crown of popo
		{
			repeat(min(1+loops,4)) 
			instance_create(Player.x,Player.y,IDPDSpawn)
		}
	}

}

