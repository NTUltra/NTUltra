///scrLoadEncrypted();
// /@description
///@param
function scrLoadEncrypted(){
	var fileString ="ntultraencrypted"+string(encryptedVersion)+".sav";
	if (file_exists(fileString))
	{
		var file = file_text_open_read(fileString);
		var saveString = file_text_read_string(file);
		file_text_close(file);
		var hash = string_copy(saveString,string_length(saveString)-40,40);
		var hashlessString = string_copy(saveString,1,string_length(saveString)-42);
		var newHash = sha1_string_utf8(hashlessString);
	
		if (hash == newHash)
		{
			encrypted_data = json_parse(hashlessString);
			if is_struct(encrypted_data)
			{
				if (variable_struct_get(encrypted_data,"secrets") == undefined)
				{
					var olddata = encrypted_data;
					encrypted_data = {
						ctot_dailies_score_seed: olddata.ctot_dailies_score_seed,
						daily_score_dates: olddata.daily_score_dates,
						ctot_dailies_score_score: olddata.ctot_dailies_score_score,
						dailies_score_day: olddata.dailies_score_day,
						ctot_dailies_race_seed: olddata.ctot_dailies_race_seed,
						daily_race_dates: olddata.daily_race_dates,
						ctot_dailies_race_time: olddata.ctot_dailies_race_time,
						dailies_race_day: olddata.dailies_race_day,
						secrets: [false,false,false,false,false,false,false,false,false,false],
					}
				}
			}
			else
			{
				show_error("incorrect encrypted data",true);	
			}
		}
		else
		{
			show_error("encrypted data lost integrity",false);	
		}
	}
	else
	{
		//Add in today's seed to prevent delete encrypted save from cheating
		/*
		//This logic prevents cheating if we can't prevent it through network
		encrypted_data = {
			ctot_dailies_score_seed: [todaysSeed],
			ctot_dailies_score_score: [-1],
			ctot_dailies_race_seed: [todaysSeed],
			ctot_dailies_race_time: [-1],
			secrets
		};
		*/
		scrSaveEncrypted();
	}
}