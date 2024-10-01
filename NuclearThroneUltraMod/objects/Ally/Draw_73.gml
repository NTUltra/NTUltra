/// @description They have names
if UberCont.opt_hud_des == 0
	exit;
if (UberCont.isPaused == 0 && UberCont.mouse__x < x+24 and UberCont.mouse__y < y+24 and UberCont.mouse__x > x-24 and UberCont.mouse__y > y-24)
{//name
	if UberCont.normalGameSpeed == 60
		nameHover += 0.5;
	else
		nameHover += 1;
	if nameHover > 15
	{
		//draw_set_color(c_white);
		scrDrawTextBackgrounded(x,y-16,name);
		//draw_text(x,y-16,name);
	}
}
else
{
	nameHover = 0;	
}
/*
draw_path(currentPath,
path_get_point_x(currentPath,0),
path_get_point_y(currentPath,0),
false);
*/