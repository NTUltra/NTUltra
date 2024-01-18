///scrGetDailyGamemodeFile();
// /@description
///@param
function scrGetDailyGamemodeFile(wantDailyNumber){
	var fileName = file_find_first(string(wantDailyNumber) + "_ntultradailygamemode*", 0);
	if fileName == ""
	{
		noFile = true;
		fileName = file_find_first("ds"+string(wantDailyNumber) + "_ntultradailyscore*", 0);
		fileName = string_replace(fileName, "_ntultradailygamemode", "_ntultradailygamemode");
		//fileName = dailyRaceSaveFileString;
	}
	return fileName;
}