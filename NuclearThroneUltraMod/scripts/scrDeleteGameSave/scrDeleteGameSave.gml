function scrDeleteGameSave(saveSlot) {
	var saveFileString;
	saveFileString="ntultra"+string(saveSlot)+".sav";
	if file_exists(saveFileString)
	{
		file_delete(saveFileString);
		if instance_exists(Menu)
		{
			Menu.savedGames[saveSlot] = {};
			Menu.saveSlotState = 0;
		}
	}
}
