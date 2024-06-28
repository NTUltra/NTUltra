/// @description Spawn the challenges
if !openedShop
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
	
	//EXTRA HARD CHALLENGES
	/* GOTTA BEAT THIS GUY FIRST
	if !UberCont.voidChallengeCompleted[3]
		with instance_create(x - 32,y + 96,VoidShopChallenge3)
		{
			image_index = 0;
			image_speed = 0.4;
		}
	if !UberCont.voidChallengeCompleted[4]
		with instance_create(x,y + 96,VoidShopChallenge4)
		{
			image_index = 1;
			image_speed = 0.5;
		}
	if !UberCont.voidChallengeCompleted[5]
		with instance_create(x + 32,y + 96,VoidShopChallenge5)
		{
			image_index = 0;
			image_speed = 0.4;
		}
	*/
}