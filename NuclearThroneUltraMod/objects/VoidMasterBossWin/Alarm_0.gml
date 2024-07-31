/// @description Donezo
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
			text = "WELL";
		}
		if instance_exists(PlayerDead)
			hasTied = 1;
		else
			hasSucceeded = 1;
		alarm[2] = 5;
	}
}
with PlayerDead
{
	instance_destroy();	
}