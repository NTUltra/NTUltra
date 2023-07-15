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
			if array_length(UberCont.runRace) > 1
			{
				debug("send race: ",string(UberCont.runRace));
				var sendBuffer = buffer_create(23,buffer_grow,1);
				buffer_write(sendBuffer,buffer_u8,NETDATA.RACE);
				buffer_write(sendBuffer,buffer_u16,myClientId);
				debug("send day: ", UberCont.dailyDay);
				buffer_write(sendBuffer,buffer_u16,UberCont.dailyDay);//This is the day I started my run
				buffer_write(sendBuffer,buffer_u64,UberCont.runRace[0]);//Time
				//Add empty space because for some reason first character is lost at server
				buffer_write(sendBuffer,buffer_string,UberCont.runRace[1]);//Name
				buffer_write(sendBuffer,buffer_string,UberCont.runRace[2]);//route
				buffer_write(sendBuffer,buffer_u8,UberCont.runRace[3]);//race
				buffer_write(sendBuffer,buffer_u8,UberCont.runRace[4]);//bskin
				buffer_write(sendBuffer,buffer_bool,UberCont.runRace[5]);//altUltra
				buffer_write(sendBuffer,buffer_u16,UberCont.runRace[6]);//wep
				buffer_write(sendBuffer,buffer_u16,UberCont.runRace[7]);//bwep
				buffer_write(sendBuffer,buffer_u16,UberCont.runRace[8]);//cwep
				buffer_write(sendBuffer,buffer_string,UberCont.runRace[9]);//crown
				buffer_write(sendBuffer,buffer_u8,UberCont.runRace[10]);//Ultra Mod
				buffer_write(sendBuffer,buffer_u8,UberCont.runRace[11]);//Ultra mutation 255 is none
				buffer_write(sendBuffer,buffer_string,UberCont.runRace[12]);//List of mutations
				network_send_packet(serverSocket, sendBuffer, buffer_get_size(sendBuffer));
				buffer_delete(sendBuffer);
			}
			UberCont.runRace = [];
			UberCont.runScore = [];
		break;
		case NETDATA.CONFIRMRACE:
			debug("RACE CONFIRMED");
			network_destroy(serverSocket);
			instance_destroy();
		break;
	}
}