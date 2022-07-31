/// @description xxx
if instance_exists(GenCont)
{
	var cx = camera_get_view_x(view_camera[0]);
	var cy = camera_get_view_y(view_camera[0]);
	var cw = camera_get_view_width(view_camera[0]);
	draw_set_halign(fa_center)
	draw_set_valign(fa_top);
	var xx = cx + (cw*0.5);
	var yy = cy + 48;
	draw_set_colour(c_black);
	draw_text(xx,yy,name);
	draw_set_colour(c_white);
	draw_text(xx,yy-1,name);

	draw_set_valign(fa_bottom)
}
else if !instance_exists(LevCont)
{
	instance_destroy();
}