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
			latestVersion = buffer_read(buffer, buffer_string);
			debug(latestVersion);
			UberCont.todaysSeed = buffer_read(buffer, buffer_u16);
			UberCont.seed = UberCont.todaysSeed;
			UberCont.dailyDay = buffer_read(buffer, buffer_u16);
			UberCont.weeklyWeek = buffer_read(buffer, buffer_u16);
			UberCont.totalDailies = UberCont.dailyDay;
			UberCont.totalWeeklies = UberCont.weeklyWeek;
			debug("TOTAL WEEKLIES", UberCont.totalWeeklies);
			if latestVersion != UberCont.updateVersion
			{
				alarm[0] = min(alarm[0],1);
			}
			else if UberCont.isWeekly {
				debug("WEEKLY");
				var sendBuffer = buffer_create(3,buffer_grow,1);
				buffer_write(sendBuffer,buffer_u8,NETDATA.STARTWEEKLY);
				buffer_write(sendBuffer,buffer_u16,myClientId);
				network_send_packet(serverSocket, sendBuffer, buffer_get_size(sendBuffer));
				buffer_delete(sendBuffer);
				with UberCont {
					if !ds_map_exists(encrypted_data.ctot_weeklies_score[1], weeklyWeek)
					{
						encrypted_data.ctot_weeklies_score[0] = "";
						ds_map_add(encrypted_data.ctot_weeklies_score[1], weeklyWeek, 0);
					}
				}
			}
			else
			{
				SetSeed();
				UberCont.randomDailyMod = irandom_range(1,18);
				UberCont.chestRan = 0;
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
						seed = UberCont.todaysSeed;
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
			debug("the seed: ", UberCont.todaysSeed);
			UberCont.seed = UberCont.todaysSeed;
			UberCont.opt_gamemode = buffer_read(buffer, buffer_u16);
			UberCont.weeklyGamemode = UberCont.opt_gamemode;
			switch (UberCont.opt_gamemode)
			{
				case 1://One weapon only
					UberCont.opt_gm1wep = buffer_read(buffer,buffer_u16);
					with Player
					{
						if UberCont.opt_gm1wep - 1 == 0 {
					        wep = ceil(irandom(maxwep));
					    }
					    else {
					        wep = UberCont.opt_gm1wep
					    }
						if race == 7
							bwep = wep;
						if ammo[wep_type[wep]] < typ_ammo[wep_type[wep]] * 3
							ammo[wep_type[wep]] += typ_ammo[wep_type[wep]] * 3;
						scrWeaponHold();
					}
				break;
				case 8://VAN FAN
				with Player
				{
					area = 117;
					if race != 13 // Sheep gets no fanpusher
					{
						wep = 373;//The vanpusher
						if race == 7
							bwep = wep;
					}
					scrWeaponHold();
				}
				break;
				case 19://Disc room
					UberCont.opt_discs = buffer_read(buffer,buffer_u16);
					UberCont.opt_discdamage = buffer_read(buffer,buffer_u8);
				break;
				case 25: //Survival Arena
					with Player
					{
						area = 116;
						if !instance_exists(SurvivalWave)
						{
							instance_create(x,y,SurvivalWave);
						}
					}
				break;
				case 34://HARD MODE
					with Player {
						skillpoints ++;
						skillsChosen --;
						if !instance_exists(PlayerSpawn)
						{
							hard = 3;
							instance_create(x,y,HardModeChest);
						}	
					}
				break;
			}
			alarm[3] = 60;
			alarm[1] += 90;
			
		break;
	}
	
}