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
			UberCont.totalDailies = buffer_read(buffer, buffer_u16);
			UberCont.totalWeeklies = buffer_read(buffer, buffer_u16);
			UberCont.weeklyWeek = UberCont.totalWeeklies;
			if latestVersion != UberCont.updateVersion && latestVersion != UberCont.updateVersion + UberCont.subUpdateVersion
			{
				notUpdated = "*"
				if canShow
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
			debug("I CAN PARTICIPATE? ",canParticipate);
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
				debug("daily day:", dailyDay);
				canParticipateInGamemode = buffer_read(buffer, buffer_bool);
				if dailyDay % 2 == 0 {
					debug("ITS NOT A RACE");
					isRace = false;
					with DailyRace {
						isRace = false;
						dailyName = "DAILY GAMEMODE"
						isGamemode = true;
						dailyDone = other.canParticipateInGamemode;
						if dailyDone
							sprite_index = sprDailyChallengeOnGM
						else
							sprite_index = sprDailyChallengeOffGM
					}
				}
			}
			network_destroy(serverSocket);
		break;
	}
}