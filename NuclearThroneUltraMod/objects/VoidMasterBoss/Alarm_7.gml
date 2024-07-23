/// @description Lol you died lol lol you died
with PlayerInFakeDeath
{
	instance_destroy();	
}
with Player
{
	visible = true;
	x = VoidMaster.x;
	y = VoidMaster.y + 48;
	scrForcePosition60fps();
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