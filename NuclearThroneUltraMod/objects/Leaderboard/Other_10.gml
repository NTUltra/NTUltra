/// @description Request leaderboard
var sendBuffer = buffer_create(5,buffer_fixed,1);
if leaderboardType == LEADERBOARD.RACE
	buffer_write(sendBuffer,buffer_u8,NETDATA.LEADERBOARDRACE);
else
	buffer_write(sendBuffer,buffer_u8,NETDATA.LEADERBOARD);
buffer_write(sendBuffer,buffer_u16,myClientId);
buffer_write(sendBuffer,buffer_u16,page);
debug("want page: ", page);
network_send_packet(serverSocket, sendBuffer, buffer_get_size(sendBuffer));
buffer_delete(sendBuffer);