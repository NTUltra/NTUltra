/// @description Draw hud surface
if surface_exists(hudSurface)
{
	var s = display_get_gui_width()/camera_get_view_width(view_camera[0]);
	draw_surface_ext(hudSurface,0,0,s,s,0,c_white,1);
}