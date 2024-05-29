/// @description Start it
network_set_config(network_config_use_non_blocking_socket, 1);
serverSocket = network_create_socket(network_socket_tcp);
serverIp =  UberCont.serverIp;
serverPort = UberCont.serverPort;
myClientId = -1;
viewingWeekly = false;
debug("SEND PERLIMINARY SCORE!??");
var res = network_connect_async(serverSocket,string(serverIp),real(serverPort));
if (res < 0) {
	//FAIL
	debug("CONNECTION FAIL");
} else
{
}
image_speed = 0.6;
depth = -9999;
alarm[0] = 1800;