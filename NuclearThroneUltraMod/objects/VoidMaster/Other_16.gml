/// @description Spawn boss bounties
if !openedShop && instance_exists(RegalNavigation)
{
	openedShop = true;
	if !array_contains(UberCont.killedBoss,secretChallengeBosses.bigFish)
		with instance_create(x - 40,y + 52,VoidBountyBigFish)
		{
			image_index = 2;
			image_speed = 0.5;
		}
	if !array_contains(UberCont.killedBoss,secretChallengeBosses.bigVulture)
		with instance_create(x,y + 52,VoidBountyBigVulture)
		{
			image_index = 1;
			image_speed = 0.4;
		}
	if !array_contains(UberCont.killedBoss,secretChallengeBosses.cheshireCat)
		with instance_create(x + 40,y + 52,VoidBountyCheshireCat)
		{
			image_index = 0;
			image_speed = 0.3;
		}
		
	if !array_contains(UberCont.killedBoss,secretChallengeBosses.bushBox)
		with instance_create(x - 32,y + 96,VoidBountyBushBox)
		{
			image_index = 0;
			image_speed = 0.4;
		}
	if !array_contains(UberCont.killedBoss,secretChallengeBosses.bigAssassin)
		with instance_create(x,y + 96,VoidBountyBigAssassin)
		{
			image_index = 1;
			image_speed = 0.5;
		}
	if !array_contains(UberCont.killedBoss,secretChallengeBosses.hyperCrystal)
		with instance_create(x + 32,y + 96,VoidBountyHyperCrystal)
		{
			image_index = 0;
			image_speed = 0.4;
		}
}