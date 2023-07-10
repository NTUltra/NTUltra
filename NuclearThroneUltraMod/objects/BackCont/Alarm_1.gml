/// @description popo

if instance_exists(Player) and !instance_exists(GenCont) and !instance_exists(LevCont)
{
	spawnedThisManyPopo ++ ;
//chance that idpd stop spawning
if spawnedThisManyPopo < canSpawnPopoThisManyTimes
	alarm[1] = 1000//500

if  (( (loops >= 1 and instance_number(Grunt) < 3+loops and Player.area != 100) || scrIsCrown(16)) && instance_number(enemy) - instance_number(IDPDVan) > 3)
{
repeat(min(9,loops))    
instance_create(Player.x,Player.y,IDPDSpawn)        

if scrIsCrown(16)//crown of popo
{
	repeat(min(2+loops,9)) 
	instance_create(Player.x,Player.y,IDPDSpawn)
}
}

}

