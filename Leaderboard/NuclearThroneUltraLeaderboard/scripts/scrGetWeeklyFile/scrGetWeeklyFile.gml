///scrGetWeeklyFile();
// /@description
///@param
function scrGetWeeklyFile(wantDailyNumber){
	var fileName = file_find_first("w"+string(wantDailyNumber) + "_ntultraweekly*", 0);
	show_debug_message(fileName);
	if fileName == ""
	{
		noFile = true;
		fileName = weeklySaveFileString;
	}
	return fileName
}