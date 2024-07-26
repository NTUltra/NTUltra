function scrSave() {
	var saveFileString;
	saveFileString="ntultra"+string(version)+".sav";
	ini_open(saveFileString);

	scrSaveStats();
	scrSaveOptions();
	scrSaveData();

	ini_close();

	completionpercentage = scrCompletionPercentage();
}
