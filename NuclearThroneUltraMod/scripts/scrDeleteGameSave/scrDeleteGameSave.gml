function scrDeleteGameSave(saveSlot) {
	var saveFileString = scrGameFileSelection(saveSlot);
	while file_exists(saveFileString)
	{
		file_delete(saveFileString);
		saveFileString = scrGameFileSelection(saveSlot);
	}
	if instance_exists(Menu)
	{
		Menu.savedGames[saveSlot] = {};
		Menu.saveSlotState = 0;
	}
}
