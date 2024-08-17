/// @description Spawn the EXTREME challenges
if UberCont.voidExtremeChallenges && !openedAdditionalChallenges
{
	openedAdditionalChallenges = true;
	hasFailed = false;
	hasSucceeded = true;
	startedDuel = true;
	//EXTRA HARD CHALLENGES
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
}