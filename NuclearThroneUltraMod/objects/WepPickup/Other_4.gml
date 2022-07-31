mask_index = mskWepPickup;
if instance_exists(Player)
{
	x=Player.x;
	y=Player.y;
	if Player.ultra_got[66] && Player.altUltra
	{
		mask_index = mskBigWepPickup;	
	}
}
alarm[2] = 10;
persistent = false;
