/// @description Draw game
gpu_set_blendenable(false);
var w = (camera_get_view_width(view_camera[0]) * UberCont.opt_resolution_scale)
var h = (camera_get_view_height(view_camera[0]) * UberCont.opt_resolution_scale)
var hscale = window_get_height()/h;
var wscale = window_get_width()/w;
var scale = wscale;
var xx = 0;
if (wscale > hscale)
{
	scale = hscale;
	xx = (w - view_get_hport(view_camera[0])) * scale * 0.5;
}
else
{
	xx = (w - view_get_wport(view_camera[0])) * scale * 0.5;
}
var yy = (window_get_height() - (view_get_hport(view_camera[0])*scale)) * 0.5;
if !instance_exists(BackCont)
{
	viewX = camera_get_view_x(view_camera[0]);
	viewY = camera_get_view_y(view_camera[0]);
}
draw_surface_ext
(
	application_surface,
	xx - (frac(viewX)*scale),
	yy - (frac(viewY)*scale),
	scale,
	scale,
	0,
	c_white,
	1.0
)
gpu_set_blendenable(true);