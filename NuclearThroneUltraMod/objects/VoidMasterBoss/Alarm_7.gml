/// @description Lol you died lol lol you died
with PlayerInFakeDeath
{
	instance_destroy();	
}
with Player
{
	x = VoidMaster.x;
	y = VoidMaster.y + 64;
	with VoidMaster
	{
		with TextHandler
		{
			text = "NICE TRY";
		}
		hasFailed = 1;
		alarm[2] = 5;
	}
}
snd_play_2d(sndVoidCreepEnd);
instance_destroy(id,false);