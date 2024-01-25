///xxx();
// /@description
///@param
function scrSendScore(buffer){
	debug("CLIENT ID");
	myClientId = buffer_read(buffer, buffer_u16);
	var latestVersion = buffer_read(buffer, buffer_string);
	UberCont.totalDailies = buffer_read(buffer, buffer_u16);
	//Has a day passed?
	UberCont.totalWeeklies = buffer_read(buffer, buffer_u16);
	if array_length(UberCont.runScore) > 1
	{
		debug("send score: ",string(UberCont.runScore));
		var sendBuffer = buffer_create(29,buffer_grow,1);
		if UberCont.isLeaderboardGamemode
		{
			if UberCont.viewDailyGamemode//daily race
			{
				buffer_write(sendBuffer,buffer_u8,NETDATA.BIDAILYGAMEMODE);
			}
			else
			{
				buffer_write(sendBuffer,buffer_u8,NETDATA.WEEKLY);
			}
			viewingWeekly = true;
			if object_index == Leaderboard
				UberCont.isLeaderboardGamemode = false;
		}
		else
			buffer_write(sendBuffer,buffer_u8,NETDATA.SCORE);
		buffer_write(sendBuffer,buffer_u16,myClientId);
		if viewingWeekly
		{
			buffer_write(sendBuffer,buffer_u16,UberCont.weeklyWeek);
			buffer_write(sendBuffer,buffer_string,UberCont.encrypted_data.ctot_weeklies_score[0]);//Send UUID
			UberCont.encrypted_data.ctot_weeklies_score[0] = "";
			for (var i = 0; i < array_length(UberCont.runScore); i++)
			{
				UberCont.encrypted_data.ctot_weeklies_score[0] += string(UberCont.runScore[i])+" ";
			}
		}
		else
			buffer_write(sendBuffer,buffer_u16,UberCont.dailyDay);//This is the day I started my run
		buffer_write(sendBuffer,buffer_u64,UberCont.runScore[0]);//Kills
		buffer_write(sendBuffer,buffer_u64,UberCont.runScore[1]);//UserId
		buffer_write(sendBuffer,buffer_string,UberCont.runScore[2]);//Name
		buffer_write(sendBuffer,buffer_u8,UberCont.runScore[3]);//area
		buffer_write(sendBuffer,buffer_u8,UberCont.runScore[4]);//subarea
		buffer_write(sendBuffer,buffer_u8,UberCont.runScore[5]);//loops technically limited to loop 255
		buffer_write(sendBuffer,buffer_u8,UberCont.runScore[6]);//race
		buffer_write(sendBuffer,buffer_u8,UberCont.runScore[7]);//bskin
		buffer_write(sendBuffer,buffer_bool,UberCont.runScore[8]);//altUltra
		buffer_write(sendBuffer,buffer_u16,UberCont.runScore[9]);//wep
		buffer_write(sendBuffer,buffer_u16,UberCont.runScore[10]);//bwep
		buffer_write(sendBuffer,buffer_u16,UberCont.runScore[11]);//cwep
		buffer_write(sendBuffer,buffer_string,UberCont.runScore[12]);//crown
		buffer_write(sendBuffer,buffer_u8,UberCont.runScore[13]);//Ultramod
		buffer_write(sendBuffer,buffer_u8,UberCont.runScore[14]);//Ultra mutation 255 is none
		buffer_write(sendBuffer,buffer_string,UberCont.runScore[15]);//List of mutations
		network_send_packet(serverSocket, sendBuffer, buffer_get_size(sendBuffer));
		buffer_delete(sendBuffer);
	}
	else if UberCont.isLeaderboardGamemode && array_length(UberCont.runRace) > 1{
		if object_index == Leaderboard
		{
			UberCont.isLeaderboardGamemode = false;
			if !UberCont.viewDailyGamemode
				viewingWeekly = true;
		}
		debug("send vanfan: ",string(UberCont.runRace));
		var sendBuffer = buffer_create(10,buffer_grow,1);
		buffer_write(sendBuffer,buffer_u8,NETDATA.WEEKLY);
		buffer_write(sendBuffer,buffer_u16,myClientId);
		buffer_write(sendBuffer,buffer_u16,UberCont.weeklyWeek);
		buffer_write(sendBuffer,buffer_string,UberCont.encrypted_data.ctot_weeklies_score[0]);//Send UID
		buffer_write(sendBuffer,buffer_u64,UberCont.runRace[0]);//Time
		buffer_write(sendBuffer,buffer_u64,UberCont.runRace[1]);//User id
		buffer_write(sendBuffer,buffer_string,UberCont.runRace[2]);//Name
		buffer_write(sendBuffer,buffer_u8,UberCont.runRace[3]);//race
		buffer_write(sendBuffer,buffer_u8,UberCont.runRace[4]);//bskin
		network_send_packet(serverSocket, sendBuffer, buffer_get_size(sendBuffer));
		buffer_delete(sendBuffer);
	}
	else if object_index == Leaderboard
	{
		//Just get leaderboard
		UberCont.weeklyWeek = UberCont.totalWeeklies;
		UberCont.dailyDay = UberCont.totalDailies;
		debug("total dailies ", UberCont.dailyDay);
		event_user(0);
	}
	UberCont.runScore = [];
}