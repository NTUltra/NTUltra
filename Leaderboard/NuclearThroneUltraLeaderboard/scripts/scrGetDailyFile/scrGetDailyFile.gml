///scrGetDailyFile();
// /@description
///@param
function scrGetDailyFile(wantDailyNumber){
	var fileName = file_find_first("ds"+string(wantDailyNumber) + "_ntultradailyscore*", 0);
	if fileName == ""
	{
		noFile = true;
		fileName = file_find_first(string(wantDailyNumber) + "_ntultradailyrace*", 0);
		fileName = string_replace(fileName, "_ntultradailyrace", "_ntultradailyscore");
		//fileName = dailyScoreSaveFileString;
	}
	return fileName
}