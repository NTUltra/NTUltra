/// @description
function scPreferencesFileSelection(){
	var saveFileString;
	saveFileString = game_save_id + "ntultrapreferences.sav";
	if (!file_exists(saveFileString)) //Backwards compatability
	{
		saveFileString = "ntultrapreferences.sav";
		if (!file_exists(saveFileString))
		{
			saveFileString = program_directory + "ntultrapreferences.sav";
			if (!file_exists(saveFileString))
			{
				saveFileString = working_directory + "ntultrapreferences.sav";
				if (!file_exists(saveFileString))
				{
					saveFileString = game_save_id + "ntultrapreferences.sav";
				}
			}
		}
	}
	return saveFileString;
}