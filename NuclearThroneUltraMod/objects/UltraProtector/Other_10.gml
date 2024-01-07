/// @description Draw shield
if myGuy != noone && instance_exists(myGuy)
{
	var dir = point_direction(x,y,myGuy.x,myGuy.y) + 180;
	draw_line_width_colour(
	x + lengthdir_x(25,gunangle),
	y + lengthdir_y(25,gunangle),
	shieldX + lengthdir_x(shieldRadius,dir),
	shieldY + lengthdir_y(shieldRadius,dir),UberCont.opt_resolution_scale
	,lineCol,lineCol);
	draw_circle_width_colour(shieldX,shieldY,shieldRadius,1,circleCol);
}