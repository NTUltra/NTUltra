/// @description Connect it
serverSocket = network_create_socket(network_socket_tcp);
var res = network_connect_async(serverSocket,string(serverIp),real(serverPort));
if (res < 0) {
	//FAIL
} else
{
}