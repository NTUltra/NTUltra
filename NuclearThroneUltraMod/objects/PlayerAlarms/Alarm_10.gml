/// @description MeltingD
with Player
{
	if ultra_got[16] && meltingd != noone && instance_exists(meltingd){
		with meltingd
		{
			my_health = 0;
			//instance_destroy();
		}
	}	
}
alarm[10] = 5;