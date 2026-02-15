/// @description
function scrGameFileSelection(slot){
	var saveFileString;
	//Backwards compatability
	saveFileString = game_save_id + "ntultra"+string(slot)+".sav";
	if (!file_exists(saveFileString))
	{
		saveFileString = "ntultra"+string(slot)+".sav";
		if (!file_exists(saveFileString))
		{
			saveFileString = program_directory + "ntultra"+string(slot)+".sav";
			if (!file_exists(saveFileString))
			{
				saveFileString = working_directory + "ntultra"+string(slot)+".sav";
				if (!file_exists(saveFileString))
				{
					saveFileString = game_save_id + "ntultra"+string(slot)+".sav";
				}
			}
		}
	}
	return saveFileString;
}