/// @description Portal
alarm[0] = 60;
if !instance_exists(GenCont)
{
	x = px;
	y = py;
	if (instance_exists(Player) && Player.area != 104)
	{
		with instance_nearest(px,py,Wall)
		{
			other.x = x + 8;
			other.y = y + 8;
		}
		scrSpawnEndLevelPortal()
	}
}