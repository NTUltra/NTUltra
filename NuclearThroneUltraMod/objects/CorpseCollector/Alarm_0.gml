/// @description Portal
if !instance_exists(GenCont)
{
	x = px;
	y = py;
	if !instance_exists(Player) || Player.area != 104
		scrSpawnEndLevelPortal()
	alarm[0] = 120;
	if fps_real < fps
	{
		if visible
			alarm[1] = 5;
		visible = false;
		with Top
		{
			instance_destroy();
		}
		with TopSmall
		{
			instance_destroy();	
		}
	}
}