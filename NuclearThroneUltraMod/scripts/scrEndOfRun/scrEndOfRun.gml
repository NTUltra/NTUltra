///scrEndOfRun();
// /@description reset some important variables
///@param
function scrEndOfRun(){
	//Also delete in alarm[2] in UberCont if object is deactivated during menuing
	with Marker
	{
		instance_destroy();	
	}
	with Cursor
	{
		inGameVisibleState = true;
		visible = inGameVisibleState;
	}
	with Credits
		instance_destroy();
	with PauseTimer
		instance_destroy();
	with PinkSheep
		instance_destroy(id,false);
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
	with WantHealth
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
		areasVisited = 0;
		lastwishused=false;
		hasLeveledUp = false;
		usedUltraMutationStart = false;
		triedToGoHQThisLoop = false;
		loadedRun = false;
		crownVaultChallenge = 0;
		killedBoss = [];
		collectedRewards = [];
		enableReroll = false;
		crownHeal = false;
		radUp = false;
		maxHpIncrease = 0;
		highestReachedLevel = 0;
		hadUnlockDisablePopup = false;
		globalMutationsChosen = 0;
		seedWeaponSmith = 0;
		canSave = false;
		canMultiCrown = false;
		useRaceActive = 1;
		if scrIsGamemode(43)
			canMultiCrown = true;
		canPickFrogCrown = true;
		hasTakenCrownOfLife = false;
		hasTakenCrownOfProtection = false;
		hasTakenCrownOfStability = false;
		loadedLoops = 0;
		loadedKills = 0;
		if !scrIsGamemode(38)
		{
			useSeed = false;
		}
		nextGunGameWep = 0;
		nextGunGameWepB = 0;
		canSpawnInversionShards = false;
		collectedInversionShards = 0;
		collectedInversionShardReward = false;
		killedInvertedThrone2 = false;
		extraVan = 0;
		skillDeposit = [];
		hasFoughtInvadingThrone = false;
		tookUnstoppable = false;
		revivedCharacters = [];
		duoPartner = [];
		partnerTurn = 1;
		partnerDied = false;
		beatTheGame = false;
		scrTranslateRoute();
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
		hasBeenSaved = false;
		levelIncrease = 0;
		voidChallengeGoing = [false,false,false,false,false,false];
		voidChallengeCompleted= [false,false,false,false,false,false];
		voidShopHealthUpgrade = 25;
		voidShopMutationUpgrade = 40;
		voidExtremeChallenges = false;
		voidMutationDeposit = [];
		voidWeaponDeposit = [];
		gotRegalThisRun = false;
		visitedScrap = false;
		visitedOasis = false;
		visitedSavanna = false;
		portalEssence = -1;
		refundLivesRegain = [];
		refundLastWishPrevent = false
		refundSkeletonLives = 0
		refundLastWish = false;
		if playFullyCompleted
		{
			playFullyCompleted = false;
			jokeIntro = true;
			hasDoneFullCompletion = true;
		}
	}
}