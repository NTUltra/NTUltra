/// @description Init
serverPort = 0;
hostSocket = network_create_server(network_socket_tcp,real(serverPort),64);
network_set_config(network_config_use_non_blocking_socket, 1);
if (hostSocket < 0) {
	show_debug_message("FAILED TO HOST GAME\nTRY AGAIN LATER");	
}
else {
	show_debug_message("SUCCESFULLY CREATED SERVER");	
}
day = -1;
event_perform(ev_alarm,0);
ini_open(dailyScoreSaveFileString);
var scoreLeaderboard = "";
while(ini_key_exists("scorelb",0))
{
	scoreLeaderboard += ini_read_string("scorelb",i,"")+"|";
}
ini_close();
leaderboardString = scoreLeaderboard;
//Data types
enum NETDATA {
	CLIENT_ID,
	SCORE,
	LEADERBOARD
}
draw_set_font(fntM);