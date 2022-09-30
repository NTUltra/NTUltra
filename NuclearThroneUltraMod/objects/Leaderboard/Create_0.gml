/// @description Init
network_set_config(network_config_use_non_blocking_socket, 1);
instance_create_depth(x,y,depth + 2,ThroneIISpiral);
alarm[0] = 2;
alarm[1] = 60;
serverIp = ""
serverPort = 0;
leaderboard = [];
totalScoreLeaderboardEntries = 0;
myClientId = -1;
pp = 10 //per page
page = 0;
image_speed = 0.6;
with UberCont
{
	if encrypted_data.username = ""
	{
		encrypted_data.username = get_string("ENTER A USERNAME","YOU CAN'T CHANGE THIS AFTERWARDS!");
		while string_count(" ",encrypted_data.username)
			encrypted_data.username = get_string("ENTER A USERNAME","SPACES ARE NOT ALLOWED");
		while string_count("|",encrypted_data.username)
			encrypted_data.username = get_string("ENTER A USERNAME","| IS NOT ALLOWED");
		while string_length(encrypted_data.username) > 10
			encrypted_data.username = get_string("ENTER A USERNAME","THAT IS TOO LONG OF A NAME!");
		runScore[1] = encrypted_data.username;
		scrSaveEncrypted();
	}
}
scrWeapons();
scrCrowns();
//Data types
enum NETDATA {
	CLIENT_ID,
	SCORE,
	LEADERBOARD
}