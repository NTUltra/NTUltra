/// @description Draw!
if UberCont.normalGameSpeed == 60
	imageIndex += 0.2;
else
	imageIndex += 0.4;
var i = imageIndex;
if !surface_exists(corrosionSurface)
{
	corrosionSurface = surface_create(surface_get_width(application_surface),surface_get_height(application_surface));	
}
surface_set_target(corrosionSurface);
draw_clear_alpha(c_black,0);
var vx = camera_get_view_x(view_camera[0])
var vy = camera_get_view_y(view_camera[0])
with Corrosion
{
	draw_sprite_ext(sprite_index,i,x - vx,y - vy,image_yscale,image_xscale,image_angle,c_white,alpha);	
}
surface_reset_target();
draw_set_blend_mode(bm_add);
draw_surface_ext(corrosionSurface,vx,vy,1,1,0,c_white,alpha);
draw_set_blend_mode(bm_normal);

if imageIndex > 4
	imageIndex = 0;