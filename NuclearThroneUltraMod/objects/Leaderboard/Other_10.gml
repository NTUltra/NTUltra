/// @description Request leaderboard
var sendBuffer = buffer_create(7,buffer_fixed,1);
if leaderboardType == LEADERBOARD.RACE
	buffer_write(sendBuffer,buffer_u8,NETDATA.LEADERBOARDRACE);
else
	buffer_write(sendBuffer,buffer_u8,NETDATA.LEADERBOARD);
buffer_write(sendBuffer,buffer_u16,myClientId);
buffer_write(sendBuffer,buffer_u16,page);
UberCont.dailyDay = max(0,UberCont.dailyDay);
buffer_write(sendBuffer,buffer_u16,UberCont.dailyDay);
debug("want page: ", page);
debug("want dailyDay: ", UberCont.dailyDay);
network_send_packet(serverSocket, sendBuffer, buffer_get_size(sendBuffer));
buffer_delete(sendBuffer);