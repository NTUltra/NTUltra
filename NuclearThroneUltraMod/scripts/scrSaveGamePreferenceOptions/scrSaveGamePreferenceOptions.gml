function scrSaveGamePreferenceOptions() {
	var saveFileString;
	saveFileString="ntultrapreferences.sav";
	ini_open(saveFileString);
	scrSaveOptions();
	ini_close();
}
