/// @description Draw
if !surface_exists(surf)
{
	surf = surface_create(surface_get_width(application_surface),surface_get_height(application_surface));
}
surface_set_target(surf);
draw_clear_alpha(c_black,0.0);
var al = ds_list_size(drawer);
var cx = camera_get_view_x(view_camera[0]);
var cy = camera_get_view_y(view_camera[0]);
for (var i = 0; i < al; i++;)
{
	var toDraw = drawer[| i];
	var dx = toDraw.xx - cx
	var dy = toDraw.yy - cy
	//var hsw = toDraw.sw * 0.5;
	//var hsh = toDraw.sh * 0.5;
	var ang = toDraw.angle;
	//var r = surface_get_width(surf);
	//var b = surface_get_height(surf);
	//on screen?
	/*
	if (
		dx + lengthdir_x(hsw,ang) >= 0 
		&& dx + lengthdir_x(hsw,ang+180) <= r
		&& dy + lengthdir_y(hsh,ang) >= 0
		&& dy + lengthdir_y(hsh,ang+180) <= b
	)
	{*/
		draw_sprite_ext(toDraw.spr,toDraw.ii,dx,dy,toDraw.xscale,toDraw.yscale,ang,toDraw.col,toDraw.alpha);
	//}
}
while ds_list_size(drawer) > 3000
	ds_list_delete(drawer,0);
surface_reset_target();
draw_surface_ext(surf,cx,cy,1,1,0,c_white,0.9);
