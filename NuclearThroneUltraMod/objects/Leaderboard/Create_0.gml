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
with UberCont
{
	goToLeaderboard = false;	
}
connectionSuccess = true;
network_set_config(network_config_use_non_blocking_socket, 1);
network_set_config(network_config_connect_timeout, 20000);
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
leaderboardType = UberCont.leaderboardType;
viewingWeekly = false;
viewingWeeklyGamemode = 0;
scrWeapons();
scrCrowns();
scrUltras();
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
killScroll = 0;
killScrollAdd = 0.01;
alarm[2] = 20;

enablePopUp = 0;
popupEntry = 0;
popUpX = 0;
popUpY = 0;
popUpIndex = 0;
popUpAltUltra = false;
scrEnableBigScreen();
with ElementorHead
	instance_destroy();
instance_create(x,y,ElementorHead);