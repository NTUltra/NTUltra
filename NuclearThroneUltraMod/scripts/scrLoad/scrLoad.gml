function scrLoad() {
	saveLocation = "";
	var saveFileString;
	var gotNewSystem = false;
	saveFileString = game_save_id + "ntultrapreferences.sav";
	if (!file_exists(saveFileString)) //Backwards compatability
	{
		saveFileString = "ntultrapreferences.sav";
		if (!file_exists(saveFileString))
		{
			saveFileString = program_directory + "ntultrapreferences.sav";
			if (!file_exists(saveFileString))
			{
				saveFileString = working_directory + "ntultrapreferences.sav";
				if (!file_exists(saveFileString))
				{
					saveFileString = game_save_id + "ntultrapreferences.sav";
					gotNewSystem = true;
				}
			}
		}
	}
	ini_open(saveFileString);
	scrLoadOptions();
	ini_close();
	//Backwards compatability
	saveFileString = game_save_id + "ntultra"+string(version)+".sav";
	if (!file_exists(saveFileString))
	{
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
	}
	if (!instance_exists(CanLoadRetailSave)  && !file_exists(saveFileString))
	{
		instance_create(x,y,CanLoadRetailSave);
		is_vanilla_player = 0;
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
