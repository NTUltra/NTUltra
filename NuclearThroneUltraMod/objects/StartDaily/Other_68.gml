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
			if !gotSteam || (latestVersion != UberCont.updateVersion && latestVersion != UberCont.updateVersion + UberCont.subUpdateVersion)
			{
				UberCont.opt_gamemode = [0];
				UberCont.isLeaderboardGamemode = false;
				alarm[0] = min(alarm[0],1);
				break;
			}
			var sendBuffer = buffer_create(11,buffer_fixed,1);
			buffer_write(sendBuffer,buffer_u8,NETDATA.CANIPARTICIPATE);
			buffer_write(sendBuffer,buffer_u16,myClientId);
			buffer_write(sendBuffer,buffer_u64,UberCont.encrypted_data.userid);//UserId
			network_send_packet(serverSocket, sendBuffer, buffer_get_size(sendBuffer));
		break;
		case NETDATA.CANIPARTICIPATE:
			var canParticipateDailyScore = buffer_read(buffer, buffer_bool);
			var canParticipateDailyGm = false;
			var dailyDay = 1;
			debug("CAN I PARTICIPATE? ",canParticipateDailyScore);
			if buffer_get_size(buffer) > 1
			{
				dailyDay = buffer_read(buffer, buffer_u8);
				canParticipateDailyGm = buffer_read(buffer, buffer_bool);
				debug("GM! ",canParticipateDailyGm);
			}
			debug(dailyDay);
			if UberCont.isLeaderboardGamemode {
				debug("WEEKLY");
				var sendBuffer = buffer_create(3,buffer_fixed,1);
				buffer_write(sendBuffer,buffer_u8,NETDATA.STARTWEEKLY);
				buffer_write(sendBuffer,buffer_u16,myClientId);
				// buffer_write(sendBuffer,buffer_u64,encrypted_data.userid);
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
				debug("DAILY");
				debug("day: ",dailyDay % 2);
				debug("gm: ", !scrIsGamemode(27));
				if (!scrIsGamemode(27) && dailyDay % 2 == 0)
				{
					debug("daily gm")
					if !canParticipateDailyGm
					{
						debug("FAIL");
						//FAIL TO START DAILY GM
						alarm[0] = min(alarm[0],1);
						break;
					}
				}
				else if !canParticipateDailyScore && scrIsGamemode(27)
				{
					alarm[0] = min(alarm[0],1);
					break;
				}
				debug("GOOD TO GO");
				var sendBuffer = buffer_create(12,buffer_fixed,1);
				buffer_write(sendBuffer,buffer_u8,NETDATA.STARTDAILY);
				buffer_write(sendBuffer,buffer_u16,myClientId);
				buffer_write(sendBuffer,buffer_u64,UberCont.encrypted_data.userid);
				if scrIsGamemode(27)//Daily score
					buffer_write(sendBuffer,buffer_bool,true);
				else//Race
					buffer_write(sendBuffer,buffer_bool,false);
				network_send_packet(serverSocket, sendBuffer, buffer_get_size(sendBuffer));
			}
		break;
		case NETDATA.STARTDAILY:
			UberCont.todaysSeed = buffer_read(buffer, buffer_u16);
			UberCont.seed = UberCont.todaysSeed;
			UberCont.dailyDay = buffer_read(buffer, buffer_u16);
			SetSeed();
			if scrIsGamemode(27)
			{
				UberCont.randomDailyMod = irandom_range(1,18);
				UberCont.pandaRan = irandom(1000);
				UberCont.chestRan = 10;
				UberCont.popoRan = 0;
				network_destroy(serverSocket);
				instance_destroy();
				with Player
				{
					subarea = 0;
					nochest = -1;
				}
				with UberCont {
					seed += 4;
					todaysSeed = seed;
					debug("DOUBLE: ", seed);
				    var al = array_length(encrypted_data.ctot_dailies_score_seed);
				    encrypted_data.ctot_dailies_score_seed[al] = todaysSeed;
					encrypted_data.daily_score_dates[al] = UberCont.today;
				    encrypted_data.ctot_dailies_score_score[al] = 0;
				    encrypted_data.dailies_score_day[al] = today;
					scrSaveEncrypted();
				}
				room_goto(romGame);
			}
			else
			{
				alarm[3] = 1;
				alarm[1] += 1;
			}
		break;
		case NETDATA.STARTBIDAILYGAMEMODE:
			UberCont.isLeaderboardGamemode = true;
			UberCont.dailyDay = buffer_read(buffer, buffer_u16);
		case NETDATA.STARTWEEKLY:
			UberCont.todaysSeed = buffer_read(buffer, buffer_u16);
			UberCont.seed = UberCont.todaysSeed;
			UberCont.chestRan = 10;
			UberCont.opt_gamemode = [];
			if (data == NETDATA.STARTBIDAILYGAMEMODE)
				UberCont.opt_gamemode = [26,buffer_read(buffer, buffer_u8)];
			else
				UberCont.opt_gamemode = [37,buffer_read(buffer, buffer_u8)];
			var i = 2;
			repeat(2)
			{
				var nextGm = buffer_read(buffer, buffer_u8);
				UberCont.opt_gamemode[i] = nextGm;
				i++;
			}
			#region gamemode handling
			debug("GAMEMODES ", UberCont.opt_gamemode);
			if scrIsGamemode(1) || scrIsGamemode(46)//One weapon only
			{
				UberCont.opt_gm1wep = buffer_read(buffer,buffer_u16);
				debug(UberCont.opt_gm1wep);
				with Player
				{
					if UberCont.opt_gm1wep == 0 {
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
			}
			if scrIsGamemode(5)// 1HP EQUALITY
			{
				with Player
				{
					my_health = 1;
					prevhealth = 1;
					maxhealth = my_health;
				}
			}
			if scrIsGamemode(7)//Atom teleport only
			{
				with Player
				{
					race = 15;
					scrLoadRace();
				}
			}
			if scrIsGamemode(8)//VAN FAN
			{
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
			}
			if scrIsGamemode(9)//Casual mode
			{
				with Player
				{
					maxhealth += UberCont.casualModeHPIncrease;
					my_health = maxhealth;
					maxSpeed = 4
				}
			}
			if scrIsGamemode(11)//Gun Game
			{
				UberCont.gunGameSeed = UberCont.todaysSeed + 4;
				with Player
				{
					scrRollGunGame();
					scrRollGunGame();
				}
			}
			if scrIsGamemode(13)//ROCKET GLOVE
			{
				with Player
				{
					wep = 239;
					if ammo[wep_type[wep]] < typ_ammo[wep_type[wep]] * 3
						ammo[wep_type[wep]] += typ_ammo[wep_type[wep]] * 3;
					scrWeaponHold();
				}
			}
			if scrIsGamemode(14)//Fish companion only
			{
				with Player
				{
					wep = 0;
					ultra_got[3] = 1;
					if !instance_exists(Partner)
						instance_create(x,y,Partner);
				}
			}
			if scrIsGamemode(15)//No mutations
			{
				with Player
				{
					maxlevel = 1;
				}
			}
			if scrIsGamemode(19)//Disc room
			{
				UberCont.opt_discs = buffer_read(buffer,buffer_u16);
				UberCont.opt_discdamage = buffer_read(buffer,buffer_u8);
			}
			if scrIsGamemode(21)//Loop start
			{
				with Player
				{
					hard = 18;
					loops = 1;	
				}
			}
			if scrIsGamemode(25) //Survival Arena
			{
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
			}
			if scrIsGamemode(30)//Ultra mutation start
			{
				with Player {
					skillsChosen = 10;
					skillpoints = 1;
				}
			}
			if scrIsGamemode(31)//Melee only
			{
				with Player {
					skill_got[13] = 1;
					totalSkills ++;
				}
			}
			if scrIsGamemode(32)//One hit wonder
			{
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
			}
			if scrIsGamemode(34)//HARD MODE
			{
				with Player {
					skillpoints ++;
					skillsChosen --;
					if !instance_exists(PlayerSpawn)
					{
						hard = 3;
						instance_create(x,y,HardModeChest);
					}
					//Also in Player create
				}
			}
			if scrIsGamemode(36)//Ultra mod start
			{
				with Player
				{
					area = 100;
					hard -= 1;
					crownvisits = -1;
				}
			}
			if scrIsGamemode(43)//Multi-crown
			{
				UberCont.canMultiCrown = true;
			}
			#endregion
			alarm[3] = 90;
			alarm[1] += 120;
			
		break;
	}
	
}