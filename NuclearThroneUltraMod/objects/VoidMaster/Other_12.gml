/// @description Spawn the challenges
if !openedShop
{
	openedShop = true;
	if !scrIsGamemode(15) && !UberCont.hadVoidLevelUp
		with instance_create(x - 32,y + 64,VoidShopChallenge4)
		{
			image_index = 2;
			image_speed = 0.5;
		}
	with instance_create(x,y + 64,VoidChallengeItem)
	{
		image_index = 1;
		image_speed = 0.4;
	}
	with instance_create(x + 32,y + 64,VoidChallengeItem)
	{
		image_index = 0;
		image_speed = 0.3;
	}
}