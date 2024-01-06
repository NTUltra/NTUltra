/// @description Portal
alarm[0] = 60;
if !instance_exists(GenCont)
{
	x = px;
	y = py;
	if !instance_exists(Player) || Player.area != 104
		scrSpawnEndLevelPortal()
}