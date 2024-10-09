/// @description Additional area population
if currentArea == 107
{
	scrSpawnBoss(InvertedBigDisc);
	if (loops > 5)
		scrSpawnMoreBosses(InvertedBigDisc,1+clamp(floor((loops-4)*0.25),1,2));
}
else if currentArea == 106 && !instance_exists(WantBoss)
{
	instance_create(x, y, WantBoss);
}
else if currentArea == 125
{
	with WeaponChest
	{
		instance_create(x,y,GoldChest)
		instance_destroy(id,false);
	}
	with BigWeaponChest
	{
		instance_create(x,y,GoldChest)
		instance_destroy(id,false);
	}
	with EliteWeaponChest
	{
		instance_create(x,y,GoldChest)
		instance_destroy(id,false);
	}
}
if currentArea == 109 && !instance_exists(InvertedChesireCat)
{
	scrSpawnBoss(InvertedChesireCat);
}
alarm[0] = 120;