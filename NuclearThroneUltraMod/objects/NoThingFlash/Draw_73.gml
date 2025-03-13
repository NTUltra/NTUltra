/// @description Flash
var l = camera_get_view_x(view_camera[0])-1;
var r = l + camera_get_view_width(view_camera[0])+2;
var t = camera_get_view_y(view_camera[0])-1;
var b = t + camera_get_view_height(view_camera[0])+2;
if !surface_exists(surf)
{
	surf = surface_create(camera_get_view_width(view_camera[0]) + 2,camera_get_view_height(view_camera[0]) + 2);
}
surface_set_target(surf);
draw_set_colour(theColour);
draw_rectangle(0,0,surface_get_width(surf),surface_get_height(surf),false);
gpu_set_blendmode(bm_subtract);
draw_set_colour(c_white);
draw_ellipse(0,0,surface_get_width(surf),surface_get_height(surf),false);
gpu_set_blendmode(bm_normal);
surface_reset_target();
draw_set_alpha(alpha);
draw_surface(surf,l,t);
draw_set_alpha(1);