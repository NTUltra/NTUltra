/// @description Portal
alarm[0] = 60;
if !instance_exists(GenCont)
{
	x = px;
	y = py;
	if !instance_exists(Player) || Player.area != 104
		scrSpawnEndLevelPortal()
	if !instance_exists(DramaCamera) && fps_real < fps
	{
		if visible && alarm[1] < 1
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