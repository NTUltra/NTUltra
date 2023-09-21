///scrGetWeeklyFile();
// /@description
///@param
function scrGetWeeklyFile(wantDailyNumber){
	var fileName = file_find_first("w"+string(wantDailyNumber) + "_ntultraweekly*", 0);
	if fileName == ""
	{
		noFile = true;
		fileName = weeklySaveFileString;
	}
}