/// @description Init
updateVersion = "BETA 30.20";
hostSocket = network_create_server(network_socket_tcp,real(serverPort),64);
totalDailies = 0;
maxwep = 609;
network_set_config(network_config_use_non_blocking_socket, 1);
if (hostSocket < 0) {
	show_debug_message("FAILED TO HOST GAME\nTRY AGAIN LATER");	
}
else {
	show_debug_message("SUCCESFULLY CREATED SERVER");	
}
day = -1;
week = -1;
/*
	if we want to load in a manual week set week to the previous one (thats a number)
	Then when the new week hits it will run the new code there for the first time,
	So you can force your rng there
*/
defaultTotalDailies = -1;
defaultTotalWeeklies = -1;
weekGamemode = -1;
weeklyOption = [];
event_perform(ev_alarm,0);
event_user(0);

//Data types
enum NETDATA {
	CLIENT_ID,
	SCORE,
	RACE,
	WEEKLY,
	LEADERBOARD,
	LEADERBOARDRACE,
	LEADERBOARDWEEKLY,
	CONFIRMRACE,
	STARTWEEKLY,
	STARTDAILY,
}
draw_set_font(fntM);
alarm[1] = 120;