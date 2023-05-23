///scrEndOfRun();
// /@description reset some important variables
///@param
function scrEndOfRun(){
	with FPSHACK
		instance_destroy();
	room_speed = 30;
	with UberCont
	{
		hasLeveledUp = false;
		loadedRun = false;
		crownVaultChallenge = 0;
		killedBoss = [];
		collectedRewards = [];
		enableReroll = false;
		maxHpIncrease = 0;
		globalMutationsChosen = 0;
		canSave = false;
		if opt_gamemode != 39
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
		txttime="00:00:00:00";
		vansSlapped = 0;
		lastSaveLoop = -1;
		levelIncrease = 0;
	}
}