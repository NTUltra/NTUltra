function scrSaveGamePreferenceOptions() {
	var saveFileString;
	saveFileString=game_save_id +"ntultrapreferences.sav";
	ini_open(saveFileString);
	scrSaveOptions();
	ini_close();
}
