/// @description Draw the text
if talking
{
	draw_set_valign(fa_middle);
	draw_set_halign(fa_center);
	var vx = camera_get_view_x(view_camera[0]);
	var vy = camera_get_view_y(view_camera[0]);
	var vw = camera_get_view_width(view_camera[0]);
	var vh = camera_get_view_height(view_camera[0]);
	draw_rectangle_colour(vx,vy + vh,vx + vw, vy + vh - 32,c_black,c_black,c_black,c_black,false);
	draw_text(vx + vw*0.5, vy + vh - 16, text);
	draw_set_valign(fa_top);
	draw_set_halign(fa_left);
}