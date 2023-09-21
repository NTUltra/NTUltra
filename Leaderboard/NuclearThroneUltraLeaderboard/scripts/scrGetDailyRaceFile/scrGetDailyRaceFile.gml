///scrGetDailyRaceFile();
// /@description
///@param
function scrGetDailyRaceFile(wantDailyNumber){
	var fileName = file_find_first(string(wantDailyNumber) + "_ntultradailyrace*", 0);
	if fileName == ""
	{
		noFile = true;
		fileName = file_find_first("ds"+string(wantDailyNumber) + "_ntultradailyscore*", 0);
		fileName = string_replace(fileName, "_ntultradailyscore", "_ntultradailyrace");
		//fileName = dailyRaceSaveFileString;
	}
	return fileName;
}