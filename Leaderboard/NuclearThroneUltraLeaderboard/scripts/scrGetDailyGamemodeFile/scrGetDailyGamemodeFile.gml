///scrGetDailyGamemodeFile();
// /@description
///@param
function scrGetDailyGamemodeFile(wantDailyNumber){
	var fileName = file_find_first(string(wantDailyNumber) + "_ntultradailygamemode*", 0);
	if fileName == ""
	{
		noFile = true;
		fileName = biDailyGamemodeSaveFileString;
	}
	return fileName;
}