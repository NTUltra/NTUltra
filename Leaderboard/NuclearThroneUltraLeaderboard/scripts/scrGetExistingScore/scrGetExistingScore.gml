///scrHasExistingScore();
// /@description
///@param
function scrGetExistingScore(fileName,userId,stringChecker = "scorelb") {
	ini_open(fileName);
	var i = 0;
	if (file_exists(fileName))
	{
		while(ini_key_exists(stringChecker,i))
		{
			var newEntry = ini_read_string(stringChecker,i,"");
			//First entry must be kills second is uuid
			var uuid = real(string_split(newEntry," ")[1]);
			if uuid == userId
			{
				show_debug_message("ENTRY ALREADY EXISTS");
				ini_close();
				return false;
			}
			i++;
			//split on _ then split on | and take second entry thats the kills
		}
	}
	ini_close();
	return true;
}