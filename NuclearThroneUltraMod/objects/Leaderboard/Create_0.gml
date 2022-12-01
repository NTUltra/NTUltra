/// @description Init
network_set_config(network_config_use_non_blocking_socket, 1);
instance_create_depth(x,y,depth + 2,ThroneIISpiral);
alarm[0] = 2;
alarm[1] = 60;
leaderboardName = "LEADERBOARD"
serverIp =  "";
serverPort = 0;
leaderboard = [];
totalScoreLeaderboardEntries = 0;
myClientId = -1;
pp = 10 //per page
page = 0;
totalPages = 0;
image_speed = 0.6;
with UberCont
{
	if encrypted_data.username = ""
	{
		var inputText = "YOU CAN'T CHANGE THIS AFTERWARDS!";
		var fail = true;
		while fail
		{
			encrypted_data.username = get_string("ENTER A USERNAME",inputText);
			if string_count(" ",encrypted_data.username)
				inputText = "SPACES ARE NOT ALLOWED";
			else if string_count("|",encrypted_data.username)
				inputText = "| IS NOT ALLOWED";
			else if string_length(encrypted_data.username) > 20
				inputText = "THAT IS TOO LONG OF A NAME! (MAX 20 CHARACTERS)";
			else if string_length(encrypted_data.username) < 1
				inputText= "INPUT ATLEAST ONE CHARACTER";
			else
				fail = false;
		}
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
killScroll = 0;
killScrollAdd = 0.01;
alarm[2] = 60;