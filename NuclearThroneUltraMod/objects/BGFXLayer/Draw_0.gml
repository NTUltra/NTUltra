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
	var ang = toDraw.angle;
		draw_sprite_ext(toDraw.spr,toDraw.ii,dx,dy,toDraw.xscale,toDraw.yscale,ang,toDraw.col,toDraw.alpha);
}
if fps_real < min(48,fps)
{
	
	amount = max(amount - 100,0);
	if amount < maxAmount*0.5
	{
		with FX
			instance_destroy();
		with GraveyardSkeleton
		{
			alarm[3] = 0;
		}
	}
}
else if amount < maxAmount
	amount += 10;
while ds_list_size(drawer) > amount
	ds_list_delete(drawer,0);
surface_reset_target();
draw_surface_ext(surf,cx,cy,1,1,0,c_white,1);
