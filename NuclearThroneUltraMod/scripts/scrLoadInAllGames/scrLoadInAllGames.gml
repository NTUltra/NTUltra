///xxx();
// /@description
///@param
function scrLoadInAllGames(){
	var i = 0;
	var saves = [];
	repeat(saveGameSlots)
	{
		var fileString =game_save_id +"ntultra" + string(i) + ".sav";
		if (file_exists(fileString))
		{
			var gameSave = scrGetSaveGameData(fileString);
			debug(gameSave);
			saves[i] = scrAssignSaveGameData(gameSave);
		}
		else
		{
			saves[i] = {};	
		}
		i++;
	}
	return saves;
}