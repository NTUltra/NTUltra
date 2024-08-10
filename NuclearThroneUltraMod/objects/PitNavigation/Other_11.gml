/// @description Additional area population
if instance_exists(Player) && Player.area == 107
{
	scrSpawnBoss(InvertedBigDisc);
	if (Player.loops > 5)
		scrSpawnMoreBosses(InvertedBigDisc,1+clamp(floor((Player.loops-4)*0.25),1,2));
}
if instance_exists(Player) && Player.area == 109 && !instance_exists(InvertedChesireCat)
{
	scrSpawnBoss(InvertedChesireCat);
}