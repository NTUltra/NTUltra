function scrSave(saveSlot = currentSave) {
	var saveFileString;
	
	saveFileString=game_save_id + "ntultra"+string(saveSlot)+".sav";
	if file_exists(saveFileString)
	{
		ini_open(saveFileString);
		scrSaveStats();
		scrSaveGameSpecificOptions();
		scrSaveData();
		completionpercentage = scrCompletionPercentage();
		ini_write_string("SAVEDATA","datetime",date_datetime_string(date_current_datetime()));
		ini_write_real("SAVEDATA","completion",completionpercentage);
		ini_close();
	}
}
