/// @description Networking
var type = async_load[? "type"];
//Connection to server
if (type == network_type_data) {
	var buffer = async_load[? "buffer"];
	buffer_seek(buffer, buffer_seek_start, 0);
	var data = buffer_read(buffer, buffer_u8);
	switch(data)
	{
		case NETDATA.CLIENT_ID:
		//SEND TIME
			myClientId = buffer_read(buffer, buffer_u16);
			latestVersion = buffer_read(buffer, buffer_string);
			debug(latestVersion);
			UberCont.totalDailies = buffer_read(buffer, buffer_u16);
			UberCont.totalWeeklies = buffer_read(buffer, buffer_u16);
			//latestVersion = buffer_read(buffer, buffer_string);//BETA VERSION
			UberCont.weeklyWeek = UberCont.totalWeeklies;
			if latestVersion != UberCont.updateVersion// && latestVersion != UberCont.updateVersion + UberCont.subUpdateVersion
			{
				notUpdated = "*"
				if canShow //BETATEMP
					alarm[1] = 15;
			}
			else
			{
				notUpdated = "";
			}
			UberCont.notUpdated = notUpdated;
			if (steam_initialised())
			{
				//Ask if I can participate today
				with UberCont
				{
					encrypted_data.username = string_replace_all(steam_get_persona_name()," ","@&");
					encrypted_data.userid = steam_get_user_steam_id();
					scrSaveEncrypted();
				}
				var sendBuffer = buffer_create(11,buffer_fixed,1);
				buffer_write(sendBuffer,buffer_u8,NETDATA.CANIPARTICIPATE);
				buffer_write(sendBuffer,buffer_u16,myClientId);
				buffer_write(sendBuffer,buffer_u64,UberCont.encrypted_data.userid);//UserId
				network_send_packet(serverSocket, sendBuffer, buffer_get_size(sendBuffer));
			}
			else
			{
				with DailyScore
				{
					dailyDone = false;
					sprite_index = sprDailyChallengeOn;
				}
				network_destroy(serverSocket);
			}
		break;
		case NETDATA.CANIPARTICIPATE:
			canParticipate = buffer_read(buffer, buffer_bool);
			with DailyScore
			{
				dailyDone = !other.canParticipate;
				if dailyDone
					sprite_index = sprDailyChallengeOff;
				else
					sprite_index = sprDailyChallengeOn;
			}
			if buffer_get_size(buffer) > 1
			{
				var dailyDay = buffer_read(buffer, buffer_u8);
				canParticipateInGamemode = buffer_read(buffer, buffer_bool);
				if dailyDay % 2 == 0 {
					isRace = false;
					if buffer_get_size(buffer) > 4
					{
						var gms = buffer_read(buffer, buffer_string)
						gms = string_replace_all(gms,"[","");
						gms = string_replace_all(gms,"]","");
						gms = string_replace_all(gms," ","");
						gms = string_split(gms,",",false);
						dailyGM = "";
						dailyGM += "\n"+UberCont.gamemode[real(gms[0])];
						if gms[1] != "0"
						dailyGM += "\n"+UberCont.gamemode[real(gms[1])];
						if gms[2] != "0"
						dailyGM += "\n"+UberCont.gamemode[real(gms[2])];
					}
					with DailyRace {
						isRace = false;
						dailyName = "DAILY GAMEMODE"
						isGamemode = true;
						dailyDone = !other.canParticipateInGamemode;
						if dailyDone
						{
							sprite_index = sprDailyChallengeOffGM;
							if scrIsGamemode(26)
							{
								UberCont.opt_gamemode = [UberCont.opt_default_gm];
							}
						}
						else
						{
							sprite_index = sprDailyChallengeOnGM;
						}
					}
				}
			}
			UberCont.tomorrow =  buffer_read(buffer, buffer_u16);
			network_destroy(serverSocket);
		break;
	}
}