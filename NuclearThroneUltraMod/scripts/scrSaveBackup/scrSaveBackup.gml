function scrSaveBackup() {
	var saveFileString;
	saveFileString="ntultra"+string(version)+"backup.sav";
	ini_open(saveFileString);

	scrSaveStats();
	scrSaveOptions();
	scrSaveData();

	ini_close();
}
