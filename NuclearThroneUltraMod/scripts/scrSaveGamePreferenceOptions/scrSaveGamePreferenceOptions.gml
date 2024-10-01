function scrSaveGamePreferenceOptions() {
	debug("SAVE PREF");
	var saveFileString;
	saveFileString="ntultrapreferences.sav";
	ini_open(saveFileString);
	scrSaveOptions();
	ini_close();
}
