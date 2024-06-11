function scrSaveRun() {
	with UberCont
	{
		if !useSeed && seed == 0
			seed = irandom(4294967295);
		useSeed = true;
		lastSaveLoop = Player.loops;
		encrypted_run_data = scrCopyPlayData();
		var saveString = json_stringify(encrypted_run_data);
		var hash = sha1_string_utf8(saveString);
		saveString += "#" + hash + "#";
		var saveFile ="ntultrarun" + string(saveSlot) +".sav";
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
}
