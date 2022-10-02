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
			if array_length(UberCont.runScore) > 1
			{
				debug("send score: ",string(UberCont.runScore));
				var sendBuffer = buffer_create(21,buffer_grow,1);
				buffer_write(sendBuffer,buffer_u8,NETDATA.SCORE);
				buffer_write(sendBuffer,buffer_u16,myClientId);
				buffer_write(sendBuffer,buffer_u64,UberCont.runScore[0]);//Kills
				buffer_write(sendBuffer,buffer_string,UberCont.runScore[1]);//Name
				buffer_write(sendBuffer,buffer_u8,UberCont.runScore[2]);//area
				buffer_write(sendBuffer,buffer_u8,UberCont.runScore[3]);//subarea
				buffer_write(sendBuffer,buffer_u8,UberCont.runScore[4]);//loops technically limited to loop 255
				buffer_write(sendBuffer,buffer_u8,UberCont.runScore[5]);//race
				buffer_write(sendBuffer,buffer_u8,UberCont.runScore[6]);//bskin
				buffer_write(sendBuffer,buffer_bool,UberCont.runScore[7]);//altUltra
				buffer_write(sendBuffer,buffer_u16,UberCont.runScore[8]);//wep
				buffer_write(sendBuffer,buffer_u16,UberCont.runScore[9]);//bwep
				buffer_write(sendBuffer,buffer_u16,UberCont.runScore[10]);//cwep
				buffer_write(sendBuffer,buffer_u8,UberCont.runScore[11]);//crown
				buffer_write(sendBuffer,buffer_u8,UberCont.runScore[12]);//Ultra mutation 255 is none
				network_send_packet(serverSocket, sendBuffer, buffer_get_size(sendBuffer));
				buffer_delete(sendBuffer);
			}
			UberCont.runScore = [];
		break;
		case NETDATA.SCORE:
		break;
		case NETDATA.LEADERBOARD:
			debug("leaderboard received!");
			//Receiving leaderboard
			var receivedLeaderboard = buffer_read(buffer,buffer_string);
			debug(receivedLeaderboard);
			totalScoreLeaderboardEntries = string_count("|",receivedLeaderboard);
			//leaderboard = string_replace(receivedLeaderboard,"_","\n");
			leaderboard = [];
			var startIndex = 1;
			var j = 0;
			repeat(clamp(totalScoreLeaderboardEntries-(page*10),1,10))
			{
				var scoreEntry = string_copy(receivedLeaderboard,startIndex,string_pos_ext("|",receivedLeaderboard,startIndex)-startIndex);
				debug("check: ", scoreEntry);
				var scoreEntryList = [];
				var i = 0;
				var entryIndex = 1;
				repeat(13)//12 entries
				{
					/*
					while string_pos_ext(" ",scoreEntry,startIndex)-startIndex < 1
					{
						startIndex = string_pos_ext(" ",scoreEntry,startIndex);
						startIndex++;
					}*/
					scoreEntryList[i] = string_copy(scoreEntry,entryIndex, string_pos_ext(" ",scoreEntry,entryIndex)-entryIndex);
					debug("-"+scoreEntryList[i]+"-");
					i++;
					entryIndex = string_pos_ext(" ",scoreEntry,entryIndex);
					entryIndex++;
				}
				debug("row end");
				startIndex = string_pos_ext("|",receivedLeaderboard,startIndex);
				startIndex++;
				leaderboard[j] = scoreEntryList;
				j++;
			}
		break;
	}
	
}