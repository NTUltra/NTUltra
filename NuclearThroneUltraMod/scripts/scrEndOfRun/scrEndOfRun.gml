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
		if instance_exists(GameRender) {
			with GameRender
			{
				alarm[6] = 60;
				var al = array_length(other.foundRoutes);
				allRoutes = [];
				var j = 0;
				for (var i = 0; i < al; i ++)
				{
					var routePart = string_split(other.foundRoutes[i],">",true);
					allRoutes[j] = routePart[0];
					j++;
					allRoutes[j] = routePart[1];
					j++;
				}
				route = string_split(other.routeString,">",true);
				if array_length(route) == 1
					route[1] = route[0];
				time = 0;
				loop = 0;
				routeIndex = 0;
				loop = 0;
			}
		}
		routeString = "";
		previousRoute = 0;
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