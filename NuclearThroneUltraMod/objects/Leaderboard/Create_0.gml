/// @description Init
with MusCont
{
	amb = amb0c;
	if !audio_is_playing(amb)
		snd_loop(amb)
}
if !instance_exists(MusCont)
{
	snd_loop(amb0c);
	audio_sound_gain(amb0c, max(0, sqrt(UberCont.opt_ambvol)), 0);
}
network_set_config(network_config_use_non_blocking_socket, 1);
instance_create_depth(x,y,depth + 2,ThroneIISpiral);
alarm[0] = 2;
alarm[1] = 60;
leaderboardName[0] = "LEADERBOARD";
leaderboardName[1] = "";
noBoard = false;
serverIp =  UberCont.serverIp;
serverPort =  UberCont.serverPort;
leaderboard = [];
totalScoreLeaderboardEntries = 0;
myClientId = -1;
page = 0;
totalPages = 0;
image_speed = 0.6;
/*
with UberCont
{
	debug("runScore ",runScore);
	debug("leaderboardType ",leaderboardType);
	if (array_length(runScore) > 0 && leaderboardType == LEADERBOARD.SCORE) || ( array_length(runRace) > 0 && leaderboardType = LEADERBOARD.RACE)
	{
		if encrypted_data.username == ""
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
			scrSaveEncrypted();
		}
		runScore[1] = encrypted_data.username;
		runRace[1] = encrypted_data.username;
	}
}
*/
leaderboardType = UberCont.leaderboardType;
scrWeapons();
scrCrowns();
//Data types
enum NETDATA {
	CLIENT_ID,
	SCORE,
	RACE,
	LEADERBOARD,
	LEADERBOARDRACE,
	CONFIRMRACE
}
killScroll = 0;
killScrollAdd = 0.01;
alarm[2] = 20;