/// @description Lines
if alarm[1] > 0
{
	var al = ds_list_size(myWalls);
	for (var i = 0; i < al; i++)
	{
		with myWalls[| i]
		{
			draw_line_width_color(x+8,y+8,Player.x,Player.y,2,c_black,c_black);
		}
	}	
}
if alarm[2] > 0
{
	with WallWireFrame
	{
		image_index = 1;	
	}
}
else
{
	with WallWireFrame
	{
		image_index = 0;	
	}
}