///scrGetSaveGameData();
// /@description
///@param
function scrGetSaveGameData(fileString){
	ini_open(fileString);
	var saveGame = {};
	saveGame.completion = ini_read_real("SAVEDATA","completion",0);
	saveGame.datetime = ini_read_string("SAVEDATA","datetime","");
	ini_close();
	return saveGame;
}