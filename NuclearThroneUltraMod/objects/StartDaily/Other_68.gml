/// @description Networking
var type = async_load[? "type"];
//Connection to server
debug("network async client");
if (type == network_type_data) {
	debug("WOW GOT A CONNECTION");
	var buffer = async_load[? "buffer"];
	buffer_seek(buffer, buffer_seek_start, 0);
	var data = buffer_read(buffer, buffer_u8);
	debug("data received: ",data);
	switch(data)
	{
		case NETDATA.CLIENT_ID:
			myClientId = buffer_read(buffer, buffer_u16);
			UberCont.todaysSeed = buffer_read(buffer, buffer_u16);
			UberCont.dailyDay = buffer_read(buffer, buffer_u16);
			UberCont.totalDailies = UberCont.dailyDay;
			network_destroy(serverSocket);
			instance_destroy();
			room_goto(romGame);
			with UberCont {
				if opt_gamemode == 26 {
					var al = array_length(encrypted_data.ctot_dailies_race_seed);
			        encrypted_data.ctot_dailies_race_seed[al] = todaysSeed;
					encrypted_data.daily_race_dates[al] = UberCont.today;
			        encrypted_data.ctot_dailies_race_time[al] = -1;
			        encrypted_data.dailies_race_day[al] = today;
					scrSaveEncrypted();
				} else if opt_gamemode == 27 {
					todaysSeed += 1;
			        var al = array_length(encrypted_data.ctot_dailies_race_seed);
			        encrypted_data.ctot_dailies_score_seed[al] = todaysSeed;
					encrypted_data.daily_score_dates[al] = UberCont.today;
			        encrypted_data.ctot_dailies_score_score[al] = 0;
			        encrypted_data.dailies_score_day[al] = today;
					scrSaveEncrypted();
			    }
			}
		break;
	}
	
}