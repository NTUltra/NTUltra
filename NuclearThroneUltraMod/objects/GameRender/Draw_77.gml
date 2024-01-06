/// @description Draw game
gpu_set_blendenable(false);
var w = (camera_get_view_width(view_camera[0]) * UberCont.opt_resolution_scale)
var wp = view_get_wport(view_camera[0]);
var hp = view_get_hport(view_camera[0]);
if UberCont.opt_sideart != sprite_get_number(sprSideArt) + 1
{
	var ww = window_get_width();
	var scale = ww/wp;
	scale = min(scale,window_get_height()/hp);
	fourThreeScale = scale;
	screenX = (ww - (wp * scale))*0.5;
}
else
{
	var scale = window_get_width()/w;
	screenX = (w - wp) * scale * 0.5;
}
screenY = (window_get_height() - (hp*scale)) * 0.5;
if !instance_exists(BackCont)
{
	viewX = camera_get_view_x(view_camera[0]);
	viewY = camera_get_view_y(view_camera[0]);
}
draw_surface_ext
(
	application_surface,
	screenX - (frac(viewX)*scale),
	screenY - (frac(viewY)*scale),
	scale,
	scale,
	0,
	c_white,
	1.0
)
var t = screenY
var b = screenY + (surface_get_height(application_surface) * scale);
var l = screenX
var r = screenX + (surface_get_width(application_surface) * scale);
var margin = 1 + scale;
//Bevel to hide smooth shuffling of the screen
draw_set_colour(c_black);
//Top
draw_rectangle(l,t,r,t-margin,false);
//Bottom
draw_rectangle(l,b,r,b-margin,false);
//Left
draw_rectangle(l,t,l-margin,b,false);
//Right
draw_rectangle(r,t,r-margin,b,false);
draw_set_colour(c_white);
/*
//Top
draw_line_width(l,t,r,t,scale+1);
//Bottom
draw_line_width(l,b - scale,r,b - scale,scale+1);
//Left
draw_line_width(l,t,l,b,scale+1);
//right
draw_line_width(r - scale,t,r - scale,b,scale+1);
*/
gpu_set_blendenable(true);
if instance_exists(Player) && Player.chickenFocusInUse
{
	//gpu_set_blendmode_ext(bm_inv_src_colour, bm_src_colour);
	gpu_set_blendmode(bm_subtract);
	draw_sprite_ext(sprRadial,0,l,t,(wp/256) * scale,(hp/256) * scale,0,c_white,1);
	gpu_set_blendmode(bm_normal);
}