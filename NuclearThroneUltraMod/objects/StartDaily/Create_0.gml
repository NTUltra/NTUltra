/// @description Start it
serverSocket = -1;
latestVersion = UberCont.updateVersion;
UberCont.useSeed = true;
UberCont.runScore = [];
myClientId = -1;
gotSteam = false;
with UpdateChecker
{
	instance_destroy();	
}
with UberCont
{
	if (steam_initialised())
	{
		debug("steam initialized");
		other.gotSteam = true;
		encrypted_data.username = string_replace_all(steam_get_persona_name()," ","@&");
		encrypted_data.userid = steam_get_user_steam_id();
		#region oldlogin
		/*
		debug(encrypted_data.username);
		debug(encrypted_data.userid);
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
				{
					room_goto(romConnect);
					with other
						alarm[4] = 1;
					exit;
				}
				else
					fail = false;
			}
		}
		*/
		#endregion
		scrSaveEncrypted();
	}
}
//network_set_config(network_config_use_non_blocking_socket, 1);
//network_set_config(network_config_connect_timeout, 20000);
alarm[1] = 600;
room_goto(romConnect);
serverSocket = network_create_socket(network_socket_tcp);
serverIp =  UberCont.serverIp;
serverPort = UberCont.serverPort;
alarm[2] = 1;
var res = network_connect_async(serverSocket,string(serverIp),real(serverPort));
if (res < 0) {
	//FAIL
	debug("CONNECTION FAIL");
	UberCont.opt_gamemode = [0];
	UberCont.isLeaderboardGamemode = false;
	UberCont.viewDailyGamemode = false;
} else
{
}
room_speed=UberCont.normalGameSpeed;
image_speed = 0.6;
alarm[0] = 30;
depth = -9999;