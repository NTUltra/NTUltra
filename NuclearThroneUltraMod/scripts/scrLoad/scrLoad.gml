function scrLoad() {
	var saveFileString;
	saveFileString = "ntultrapreferences.sav";
	debug("LOAD");
	if file_exists(saveFileString)
	{
		ini_open(saveFileString);
		scrLoadOptions();
		ini_close();
	}
	else
	{
		//Backwards compatability
		saveFileString = "ntultra"+string(version)+".sav";
		if (!file_exists(saveFileString))
		{
			instance_create(x,y,CanLoadRetailSave);
			is_vanilla_player = 0;
		}
		ini_open(saveFileString);
		scrLoadOptions();
		ini_close();
	}
	saveFileString="ntultra"+string(currentSave)+".sav";
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
