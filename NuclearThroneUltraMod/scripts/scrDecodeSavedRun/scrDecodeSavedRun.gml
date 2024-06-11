///scrDecodeSavedRun();
// /@description
///@param
function scrDecodeSavedRun(fileString){
	var file = file_text_open_read(fileString);
	var saveString = file_text_read_string(file);
	file_text_close(file);
	var hash = string_copy(saveString,string_length(saveString)-40,40);
	var hashlessString = string_copy(saveString,1,string_length(saveString)-42);
	var newHash = sha1_string_utf8(hashlessString);
	if (hash == newHash)
	{
		return json_parse(hashlessString);
	}
	return false;
}