///scrGetDailyNumber();
// /@description
///@param
function scrGetDailyNumber(){
	var dailyDay = 0;
	//Find file with the day then get the number of that file
	var existingScoreFile = "";
	existingScoreFile = file_find_first("*_ntultradailyscore" + day + ".sav",0);
	if (existingScoreFile != "")
	{
		dailyDay = real(
			string_copy
			(
				existingScoreFile,
				3,
				string_last_pos("_ntultradailyscore",
				existingScoreFile)-2
			)
		);
	} else
	{
		dailyDay = totalDailies;
		show_debug_message("Newest score");
	}
	file_find_close();
	return dailyDay;
}