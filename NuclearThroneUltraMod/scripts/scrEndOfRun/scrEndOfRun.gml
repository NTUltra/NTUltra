///scrEndOfRun();
// /@description reset some important variables
///@param
function scrEndOfRun(){
	//Also delete in alarm[2] in UberCont if object is deactivated during menuing
	with ElementorHead
		instance_destroy();
	with WepPickup
	{
		instance_destroy();	
	}
	with ThrowWep
	{
		instance_destroy(id,false);	
	}
	with WeaponMod
	{
		instance_destroy(id,false);	
	}
	with FPSHACK
		instance_destroy();
	with SurvivalWave
		instance_destroy();
	room_speed = 30;
	with UberCont
	{
		if (scrIsGamemode(42) && scrIsGamemode(25))
		{
			array_delete(opt_gamemode,array_contains_get_index(opt_gamemode,25),1)
			
		}
		debug("End gamemodes: ", opt_gamemode);
		if array_length(opt_gamemode) == 2
		{
			scrUnlockGameMode(41,"FOR PLAYING TWO GAMEMODES");
		}
		lastwishused=false;
		hasLeveledUp = false;
		loadedRun = false;
		crownVaultChallenge = 0;
		killedBoss = [];
		collectedRewards = [];
		enableReroll = false;
		maxHpIncrease = 0;
		globalMutationsChosen = 0;
		canSave = false;
		canMultiCrown = false;
		if scrIsGamemode(43)
			canMultiCrown = true;
		canPickFrogCrown = true;
		hasTakenCrownOfLife = false;
		if !scrIsGamemode(38)
			useSeed = false;
		canSpawnInversionShards = false;
		collectedInversionShards = 0;
		collectedInversionShardReward = false;
		killedInvertedThrone2 = false;
		extraVan = 0;
		hasFoughtInvadingThrone = false;
		revivedCharacters = [];
		beatTheGame = false;
		
		routeString = "";
		time_frame = 0;
		time_microseconds=0;
		microseconds=""//string for microseconds
		time_seconds=0;
		secondsstring="";
		time_minutes=0;
		minutesstring="";
		time_hours=0;
		finalTime = txttime;
		txttime="00:00:00:00";
		vansSlapped = 0;
		lastSaveLoop = -1;
		levelIncrease = 0;
		visitedScrap = false;
		visitedOasis = false;
		visitedSavanna = false;
	}
}