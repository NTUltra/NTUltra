function scrLoad() {
	var saveFileString;
	saveFileString = "ntultrapreferences.sav";
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
		ini_open(saveFileString);
		scrLoadOptions();
		ini_close();
	}
	saveFileString="ntultra"+string(currentSave)+".sav";
	    ini_open(saveFileString);
	    scrLoadStats();
		scrLoadGameSpecificOptions();
	    scrLoadData();
	    ini_close();

	//Percentage of unlocked stuff
	gotAllGold = false;
	completionpercentage = scrCompletionPercentage();
}
