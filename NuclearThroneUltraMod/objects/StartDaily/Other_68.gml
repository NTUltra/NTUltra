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
		//SEND TIME
			myClientId = buffer_read(buffer, buffer_u16);
			latestVersion = buffer_read(buffer, buffer_string);
			debug(latestVersion);
			UberCont.totalDailies = buffer_read(buffer, buffer_u16);
			UberCont.totalWeeklies = buffer_read(buffer, buffer_u16);
			UberCont.weeklyWeek = UberCont.totalWeeklies;
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
					if !variable_struct_exists(encrypted_data.ctot_weeklies_score[1], "w"+string(weeklyWeek))
					{
						encrypted_data.ctot_weeklies_score[1][$"w"+string(weeklyWeek)] = 0;
						encrypted_data.ctot_weeklies_score[0] = "";
					}
				}
			}
			else
			{
				var sendBuffer = buffer_create(4,buffer_grow,1);
				buffer_write(sendBuffer,buffer_u8,NETDATA.STARTDAILY);
				buffer_write(sendBuffer,buffer_u16,myClientId);
				buffer_write(sendBuffer,buffer_string,date_date_string(date_current_datetime()));
				network_send_packet(serverSocket, sendBuffer, buffer_get_size(sendBuffer));
			}
		break;
		case NETDATA.STARTDAILY:
			UberCont.todaysSeed = buffer_read(buffer, buffer_u16);
			UberCont.seed = UberCont.todaysSeed;
			UberCont.dailyDay = buffer_read(buffer, buffer_u16);
			SetSeed();
			UberCont.randomDailyMod = irandom_range(1,18);
			UberCont.chestRan = 10;
			network_destroy(serverSocket);
			instance_destroy();
			with Player
			{
				subarea = 0;
				nochest = -1;
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
				    var al = array_length(encrypted_data.ctot_dailies_score_seed);
				    encrypted_data.ctot_dailies_score_seed[al] = todaysSeed;
					encrypted_data.daily_score_dates[al] = UberCont.today;
				    encrypted_data.ctot_dailies_score_score[al] = 0;
				    encrypted_data.dailies_score_day[al] = today;
					scrSaveEncrypted();
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
				case 5:// 1HP EQUALITY
					with Player
					{
						my_health = 1;
						maxhealth = my_health;
					}
				break;
				case 7://Atom teleport only
				with Player
				{
					race = 15;
					scrLoadRace();
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
				case 9://Casual mode
				with Player
				{
					maxhealth += UberCont.casualModeHPIncrease;
					my_health = maxhealth;
					maxSpeed = 4
				}
				break;
				case 11://Gun Game
					with Player
					{
						do {
					        wep = irandom(maxwep);
					    }
					    until(wep != 69 && wep != 0 && wep != 298) //no oops gun and no no gun

					    if race = 7 //roids
					    {
					        do {
					            bwep = irandom(maxwep);
					        }
					        until(bwep != 69 && bwep != 0 && wep != 298) //no oops gun and no no gun
					    }

					    if ammo[wep_type[wep]] < typ_ammo[wep_type[wep]] * 3 {
					        ammo[wep_type[wep]] += typ_ammo[wep_type[wep]] * 3;
					    }
						scrWeaponHold();
					}
				break;
				case 13://ROCKET GLOVE
				with Player
				{
					wep = 239;
					if ammo[wep_type[wep]] < typ_ammo[wep_type[wep]] * 3
						ammo[wep_type[wep]] += typ_ammo[wep_type[wep]] * 3;
					scrWeaponHold();
				}
				break;
				case 14://Fish companion only
					with Player
					{
						wep = 0;
						race = 1;
						ultra_got[3] = 1;
						if !instance_exists(Partner)
							instance_create(x,y,Partner);
						scrLoadRace();
					}
				break;
				case 15://No mutations
					with Player
					{
						maxlevel = 1;
					}
				break;
				case 19://Disc room
					UberCont.opt_discs = buffer_read(buffer,buffer_u16);
					UberCont.opt_discdamage = buffer_read(buffer,buffer_u8);
				break;
				case 21://Loop start
					with Player
					{
						hard = 18;
						loops = 1;	
					}
				case 25: //Survival Arena
					with Player
					{
						crownpoints = 0;
						area = 116;
						if !instance_exists(SurvivalWave)
						{
							instance_create(x,y,SurvivalWave);
						}
						with Crown
							instance_destroy();
					}
				break;
				case 30://Ultra mutation start
					with Player {
						skillsChosen = 10;
						skillpoints = 1;
					}
				break;
				case 31://Melee only
					with Player {
						skill_got[13] = 1;
						totalSkills ++;
					}
				break;
				case 32://One hit wonder
					with Player {
						if array_length(UberCont.collectedRewards) > 0
						{
							skillpoints ++;
						}
						if array_length(UberCont.collectedRewards) > 5
						{
							ultraNow = true;
							skillpoints ++;
						}
					}
				break;
				case 40://Infinite level hard mode
				case 34://HARD MODE
					with Player {
						skillpoints ++;
						skillsChosen --;
						if !instance_exists(PlayerSpawn)
						{
							hard = 3;
							instance_create(x,y,HardModeChest);
						}
						maxRadPickedUp += 40;
						//Also in Player create
					}
				break;
				case 36://Ultra mod start
					with Player
					{
						area = 100;
					    hard -= 1;
					    crownvisits = -1;
					}
				break;
			}
			alarm[3] = 60;
			alarm[1] += 90;
			
		break;
	}
	
}