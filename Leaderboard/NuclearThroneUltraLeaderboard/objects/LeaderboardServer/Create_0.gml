/// @description Init
serverPort = 0;
hostSocket = network_create_server(network_socket_tcp,real(serverPort),64);
totalDailies = 0;
network_set_config(network_config_use_non_blocking_socket, 1);
if (hostSocket < 0) {
	show_debug_message("FAILED TO HOST GAME\nTRY AGAIN LATER");	
}
else {
	show_debug_message("SUCCESFULLY CREATED SERVER");	
}
day = -1;
defaultTotalDailies = -1;
event_perform(ev_alarm,0);
event_user(0);

//Data types
enum NETDATA {
	CLIENT_ID,
	SCORE,
	RACE,
	LEADERBOARD,
	LEADERBOARDRACE,
	CONFIRMRACE
}
draw_set_font(fntM);
alarm[1] = 120;