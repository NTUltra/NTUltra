selected = 0

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
	CANIPARTICIPATE,
	BIDAILYGAMEMODE,
	STARTBIDAILYGAMEMODE,
	LEADERBOARDGAMEMODE,
	UPDATESCORE,
	UPDATEWEEKLYSCORE,
	UPDATEBIDAILYSCORE,
}

network_set_config(network_config_use_non_blocking_socket, 1);
network_set_config(network_config_connect_timeout, 20000);
serverSocket = network_create_socket(network_socket_tcp);
serverIp =  UberCont.serverIp;
serverPort = UberCont.serverPort;
latestVersion = UberCont.updateVersion;
debug(latestVersion);
notUpdated = "";
myClientId = -1;
var res = network_connect_async(serverSocket,string(serverIp),real(serverPort));
if (res < 0) {
	//FAIL
	debug("CONNECTION FAIL");
} else
{
}
newUpdateLerpTime = 0;
updateSurface = -1;
canShow = false;
canParticipate = true;
canParticipateInGamemode = false;
isRace = true;
updatepage = 0;
dailyGM = "";