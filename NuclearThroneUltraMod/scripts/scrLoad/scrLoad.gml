function scrLoad() {
	var saveFileString;
	saveFileString = game_save_id + "ntultrapreferences.sav";
	//Backwards compatability
	if (!file_exists(saveFileString))
	{
		saveFileString = game_save_id + "ntultrapreferences.sav";
		if (!file_exists(saveFileString))
		{
			saveFileString = "ntultrapreferences.sav";
			if (!file_exists(saveFileString))
			{
				saveFileString = working_directory + "ntultrapreferences.sav";
			}
		}
	}
	if file_exists(saveFileString)
	{
		ini_open(saveFileString);
		scrLoadOptions();
		ini_close();
	}
	else
	{
		//Backwards compatability
		saveFileString = game_save_id + "ntultra"+string(version)+".sav";
		if (!file_exists(saveFileString))
		{
			saveFileString = "ntultra"+string(version)+".sav";
			if (!file_exists(saveFileString))
			{
				saveFileString = working_directory + "ntultra"+string(version)+".sav";
				if (!file_exists(saveFileString))
				{
					instance_create(x,y,CanLoadRetailSave);
					is_vanilla_player = 0;
				}
			}
		}
		ini_open(saveFileString);
		scrLoadOptions();
		ini_close();
	}
	saveFileString=game_save_id + "ntultra"+string(currentSave)+".sav";
	if (!instance_exists(CanLoadRetailSave) && !file_exists(saveFileString))
	{
		instance_create(x,y,CanLoadRetailSave);
	}
	ini_open(saveFileString);
	scrLoadStats();
	scrLoadGameSpecificOptions();
	scrLoadData();
	ini_close();

	//Percentage of unlocked stuff
	gotAllGold = false;
	completionpercentage = scrCompletionPercentage();
}
