/// @description Bye network
if serverSocket != -1
{
	network_destroy(serverSocket);
	with Crown
		visible = true;
	with Player {
		if race = 17 && !instance_exists(StartDaily)//GunSmith random wepmod
		{
		    do {
		        wepmod1 = scrMods();
		    }
		    until(wepmod1 != 14) //radiation mod

		}	
	}
}