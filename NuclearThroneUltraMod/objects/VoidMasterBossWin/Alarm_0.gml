/// @description Donezo
with PlayerDead
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
			text = "WELL";
		}
		hasSucceeded = 1;
		alarm[2] = 5;
	}
}