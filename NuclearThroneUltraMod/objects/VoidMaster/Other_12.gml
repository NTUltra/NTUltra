/// @description Spawn the challenges
if !openedShop && !instance_exists(RegalNavigation)
{
	openedShop = true;
	if !UberCont.voidChallengeCompleted[0]
		with instance_create(x - 40,y + 52,VoidShopChallenge0)
		{
			image_index = 2;
			image_speed = 0.5;
		}
	if !UberCont.voidChallengeCompleted[1]
		with instance_create(x,y + 52,VoidShopChallenge1)
		{
			image_index = 1;
			image_speed = 0.4;
		}
	if !UberCont.voidChallengeCompleted[2]
		with instance_create(x + 40,y + 52,VoidShopChallenge2)
		{
			image_index = 0;
			image_speed = 0.3;
		}
	event_user(5);
}