function scrLoad() {
	var saveFileString;
	saveFileString="ntultra"+string(version)+".sav";
	    ini_open(saveFileString);
	    scrLoadStats();
	    scrLoadOptions();
	    scrLoadData();
	    ini_close();

	//Percentage of unlocked stuff
	gotAllGold = false;
	completionpercentage = scrCompletionPercentage();
}
