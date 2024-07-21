/// @description Donezo
with Player
{
	x = VoidMaster.x;
	y = VoidMaster.y + 64;
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