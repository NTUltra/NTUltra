function scrCompletionPercentage() {
	//scrGameModes();
	//scrRaces();
	//scrStartingWeapons();

	playFullyCompleted = false;
	everything = 0;


	//gamemodes
	everything+=(maxgamemode)*6//21
	everything -= 24;//Final 100% unlock does not count Weekly daily daily & casual

	//characters
	everything+=racemax*36;//characters are priority (also includes crownstart (3) & secondary weapon start (3))
	everything -= 66;//Don't count the first two characters
	
	//bskins
	everything+=racemax*12;

	//cskins
	everything+=racemax*12;

	//everything += 10;???
	//golden weapons

	unlocked = 0;


	//gamemodes
	var countgamemode=1;
	repeat(maxgamemode)
	{
		if gamemode_have[countgamemode] = 1 && countgamemode != 17
			unlocked+=6

		countgamemode++;
	}
	unlocked -= 18;//Weekly daily daily

	//characters
	var countrace=1;

	repeat(racemax)
	{
		if race_have[countrace] = 1
			unlocked+=30//10 instead of 1 because these should count more into the completion shit

		if ctot_all_crowns_taken[countrace] > 0//Unlocked crownstart
			unlocked += 3;
			
		if secondary_start_wep[countrace] == 1//Secondary starting weapon
			unlocked += 3;

		countrace++;
	}
	unlocked -= 66;//Don't count the first two characters and there crownstart (3points each)
	//skins

	var countrace=1;

	repeat(racemax)
	{

		if race_bskin[countrace] = 1
			unlocked+=12

	countrace++;
	}
	var countrace=1;

	repeat(racemax)
	{

		if race_cskin[countrace] = 1
			unlocked+=12

		countrace++;
	}
	var percentage;
	percentage=(unlocked/everything)*100;//round( (unlocked/everything)*100 );
	if (percentage>=100)
	{//100% unlock!
		scrUnlockGameMode(17,"FOR UNLOCKING EVERYTHING!#CONGRATULATIONS! U R DA BEST! <3");
		var postEverything = 0;
		var postUnlock = 0;
		var postPercentage = 0;
		
		//Counting gold weapons post 100%
		//Golden weapons
		var countrace=1;
		var countstartwep=1;
		gotAllGold = true;
		repeat(racemax-1)
		{
			countstartwep=1;
			repeat(maxstartwep-1)
			{
				postEverything += 1;
				if start_wep_have[countstartwep,countrace] == 0
				{
					gotAllGold = false;
				}
				else
				{
					postUnlock += 1;
				}
				countstartwep++;
			}
			
			postEverything += 10;
			if ctot_loop[countrace]>0
			{
				postUnlock += 10;
			}
			postEverything += 5;
			if ctot_all_crowns_taken[countrace] > 0
			{
				postUnlock += 5;
			}
			countrace++;
		}
		for (var i = 0; i < maxsecretultra; i++) {
			postEverything += 10;
			if (ctot_secret_ultra_found[i] > 0)
			{
				postUnlock += 10;
			}
		}
		postPercentage = round( (postUnlock/postEverything)*100 );
		percentage += postPercentage;
		if percentage >= 200 
		{
			if !hasDoneFullCompletion || random(100) < 5
			{
				playFullyCompleted = true;
			}
		}
		
	}
	return percentage;
}
