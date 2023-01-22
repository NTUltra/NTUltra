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
			if UberCont.isWeekly {
				debug("WEEKLY");
				var sendBuffer = buffer_create(3,buffer_grow,1);
				buffer_write(sendBuffer,buffer_u8,NETDATA.STARTWEEKLY);
				buffer_write(sendBuffer,buffer_u16,myClientId);
				network_send_packet(serverSocket, sendBuffer, buffer_get_size(sendBuffer));
				buffer_delete(sendBuffer);
			}
			else
			{
				UberCont.todaysSeed = buffer_read(buffer, buffer_u16);
				UberCont.dailyDay = buffer_read(buffer, buffer_u16) + 1;
				UberCont.totalDailies = UberCont.dailyDay;
				SetSeed();
				UberCont.randomDailyMod = irandom_range(1,18);
				network_destroy(serverSocket);
				instance_destroy();
				with Player
				{
					subarea = 0;	
				}
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
			}
		break;
		case NETDATA.STARTWEEKLY:
			debug("YES WEEKLY DATA");
			UberCont.todaysSeed = buffer_read(buffer, buffer_u16);
			UberCont.opt_gamemode = buffer_read(buffer, buffer_u16);
			UberCont.totalWeeklies = UberCont.weeklyWeek;
			switch (UberCont.opt_gamemode)
			{
				case 1://One weapon only
					UberCont.opt_gm1wep = buffer_read(sendBuffer,buffer_u16);
				break;
				case 19://Disc room
					UberCont.opt_discs = buffer_read(sendBuffer,buffer_u16);
					UberCont.opt_discdamage = buffer_read(sendBuffer,buffer_u8);
				break;
			}
			alarm[3] = 60;
			alarm[1] += 90;
			
		break;
	}
	
}