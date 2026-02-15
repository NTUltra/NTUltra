function scrLoad() {
	saveLocation = "";
	var saveFileString = scPreferencesFileSelection();
	ini_open(saveFileString);
	scrLoadOptions();
	ini_close();
	saveFileString = scrGameFileSelection(currentSave);
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
