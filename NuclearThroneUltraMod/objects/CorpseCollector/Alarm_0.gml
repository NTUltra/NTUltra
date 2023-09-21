/// @description Portal
if !instance_exists(GenCont)
{
	x = px;
	y = py;
	if !instance_exists(Player) || Player.area != 104
	scrSpawnEndLevelPortal()
	alarm[0] = 120;
}