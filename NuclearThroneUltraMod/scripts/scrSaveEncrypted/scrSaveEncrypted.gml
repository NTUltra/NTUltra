function scrSaveEncrypted() {
	var saveString = json_stringify(encrypted_data);
	var hash = sha1_string_utf8(saveString);
	saveString += "#" + hash + "#";
	var saveFile ="ntultraencrypted"+string(encryptedVersion)+".sav";
	/*
	if (file_exists(saveFile))
	{
		file_delete(saveFile);
	}
	*/
	var file = file_text_open_write(saveFile);
	file_text_write_string(file,saveString);
	file_text_close(file);
}
