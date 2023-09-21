/// @description Bye network
if serverSocket != -1
{
	network_destroy(serverSocket);
}
if surface_exists(updateSurface)
{
	surface_free(updateSurface);	
}