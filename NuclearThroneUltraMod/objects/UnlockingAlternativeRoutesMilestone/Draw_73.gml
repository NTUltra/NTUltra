/// @description Draw
var vx = round(camera_get_view_x(view_camera[0]));
var vy = round(camera_get_view_y(view_camera[0]));
var vh = round(camera_get_view_height(view_camera[0]));
var vw = round(camera_get_view_width(view_camera[0]));
var xx = vx + vw*0.5
var yy = vy + vh*0.5;
draw_rectangle_colour(vx,vy,vx+vw,vy+vh,c_black,c_black,c_black,c_black,false);
if text != ""
{
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	var xx = vx + vw*0.5
	var yy = vy + vh*0.5;
	draw_text_colour(xx + 1,yy,dullText,c_black,c_black,c_black,c_black,1);
	draw_text_colour(xx + 1,yy + 1,dullText,c_black,c_black,c_black,c_black,1);
	draw_text_colour(xx,yy + 1,dullText,c_black,c_black,c_black,c_black,1);
	draw_set_colour(c_gray);
	scrDrawTextColours(xx,yy, text);
	draw_set_colour(c_white);
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);

} 