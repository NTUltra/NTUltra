/// @description Draw text
var vx = camera_get_view_x(view_camera[0]);
var vy = camera_get_view_y(view_camera[0]);
var vh = camera_get_view_height(view_camera[0]);
var vw = camera_get_view_width(view_camera[0]);
if alarm[1] > 0
{
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	var xx = vx + vw*0.5
	var yy = vy + vh*0.5;
	draw_text_colour(xx + 1,yy,text,c_black,c_black,c_black,c_black,1);
	draw_text_colour(xx + 1,yy + 1,text,c_black,c_black,c_black,c_black,1);
	draw_text_colour(xx,yy + 1,text,c_black,c_black,c_black,c_black,1);
	draw_set_colour(c_white);
	draw_text(xx,yy, text);
	draw_set_colour(c_white);
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
}