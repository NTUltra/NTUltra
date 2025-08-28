function scrLoad() {
	var saveFileString;
	saveFileString = "ntultrapreferences.sav";
	//Backwards compatability
	if (!file_exists(saveFileString))
	{
		saveFileString = program_directory + "ntultrapreferences.sav";
		if (!file_exists(saveFileString))
		{
			saveFileString = working_directory + "ntultrapreferences.sav";
			if (!file_exists(saveFileString))
			{
				saveFileString = game_save_id + "ntultrapreferences.sav";
			}
		}
	}
	ini_open(saveFileString);
	scrLoadOptions();
	ini_close();
	//Backwards compatability
	saveFileString = "ntultra"+string(version)+".sav";
	if (!file_exists(saveFileString))
	{
		saveFileString = program_directory + "ntultra"+string(version)+".sav";
		if (!file_exists(saveFileString))
		{
			saveFileString = working_directory + "ntultra"+string(version)+".sav";
			if (!file_exists(saveFileString))
			{
				saveFileString = game_save_id + "ntultra"+string(version)+".sav";
			}
		}
	}
	if (!instance_exists(CanLoadRetailSave)  && !file_exists(saveFileString))
	{
		instance_create(x,y,CanLoadRetailSave);
		is_vanilla_player = 0;
	}
	saveFileString=game_save_id + "ntultra"+string(currentSave)+".sav";
	ini_open(saveFileString);
	scrLoadStats();
	scrLoadGameSpecificOptions();
	scrLoadData();
	ini_close();

	//Percentage of unlocked stuff
	gotAllGold = false;
	completionpercentage = scrCompletionPercentage();
}
