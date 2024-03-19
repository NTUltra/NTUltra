/// @description Draw!
if !instance_exists(InkBlob)
{
	instance_destroy();
	exit;
}
if !surface_exists(blobSurface)
{
	blobSurface = surface_create(surface_get_width(application_surface),surface_get_height(application_surface));	
}
surface_set_target(blobSurface);
draw_clear_alpha(c_black,0);
var vx = camera_get_view_x(view_camera[0])
var vy = camera_get_view_y(view_camera[0])
with InkBlob
{
	draw_sprite_ext(sprite_index,image_index,x - vx,y - vy,xScale,yScale,image_angle,c_white,1);	
}
surface_reset_target();
draw_surface_ext(blobSurface,vx,vy,1,1,0,c_white,0.5);