///xxx();
// /@description
///@param
function scrLoadInAllRuns(){
	with UberCont
	{
		if !loadedRunFiles
		{
			loadedRunFiles = true;
			var i = 0;
			savedRuns = [];
			repeat(UberCont.total_run_slots)
			{
				var fileString ="ntultrarun" + string(i + 1) + ".sav";
				if (file_exists(fileString))
				{
					var encryptedRun = scrDecodeSavedRun(fileString);
					if is_struct(encryptedRun)
					{
						savedRuns[i] = scrAssignRunData(encryptedRun);
					}
					else
					{
						savedRuns[i] = {};	
					}
				}
				else
				{
					savedRuns[i] = {};	
				}
				i++;
			}
		}
	}
}