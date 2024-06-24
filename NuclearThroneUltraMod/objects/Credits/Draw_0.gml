/// @description Draw Text
var vx = camera_get_view_x(0);
var vy = camera_get_view_y(0);
var vh = camera_get_view_height(0);
var vw = camera_get_view_width(0);
if text != ""
{
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	var xx = vx + vw*0.5
	var yy = vy + vh*0.5;
	draw_text_colour(xx + 1,yy,dullText,c_black,c_black,c_black,c_black,1);
	draw_text_colour(xx + 1,yy + 1,dullText,c_black,c_black,c_black,c_black,1);
	draw_text_colour(xx,yy + 1,dullText,c_black,c_black,c_black,c_black,1);
	draw_set_colour(c_silver);
	scrDrawTextColours(xx,yy, text);
	draw_set_colour(c_white);
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
}