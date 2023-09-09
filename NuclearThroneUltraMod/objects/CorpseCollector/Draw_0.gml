/// @description Draw
if !surface_exists(surf)
{
	surf = surface_create(surface_get_width(application_surface),surface_get_height(application_surface));
}
surface_set_target(surf);
draw_clear_alpha(c_black,0.0);
var al = ds_list_size(corpses);
var cx = camera_get_view_x(view_camera[0]);
var cy = camera_get_view_y(view_camera[0]);
for (var i = 0; i < al; i++;)
{
	var toDraw = corpses[| i];
	var dx = toDraw.xx - cx
	var dy = toDraw.yy - cy
	draw_sprite_ext(toDraw.spr,toDraw.ii,dx,dy,toDraw.xscale,1,0,c_white,1);
}
surface_reset_target();
draw_surface_ext(surf,cx,cy,1,1,0,c_white,1);