function scrSaveBackup() {
	var saveFileString;
	saveFileString=game_save_id +"ntultra"+string(version)+"backup.sav";
	ini_open(saveFileString);

	scrSaveStats();
	scrSaveOptions();
	scrSaveData();

	ini_close();
}
