if hover
{
	snd_play_2d(sndClick);
	selected = 1
	with option2
		instance_destroy();
	with option
		instance_destroy();
	//scrLoadRun();
	with Menu
	{
		loadedRunFiles = true;
		var fileString ="ntultrarun1.sav";
		if (file_exists(fileString))
		{
			var encryptedRun = scrDecodeSavedRun(fileString);
			if is_struct(encryptedRun)
			{
				currentRun = scrAssignRunData(encryptedRun)
			}
		}
	}
}
//else if hover
//	selected = 0

