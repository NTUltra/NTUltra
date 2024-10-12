/// @description Draw game
if instance_exists(Acid) && UberCont.isPaused == 0
{
	shader_set(shdAcid);
	shader_set_uniform_f(Acid.hueShift,Acid.hue);
}
if !instance_exists(FreezeFrame)
	gpu_set_blendenable(false);
var w = (camera_get_view_width(view_camera[0]) * UberCont.opt_resolution_scale)
var wp = view_get_wport(view_camera[0]);
var hp = view_get_hport(view_camera[0]);
var gotSideArt = false;
if UberCont.opt_sideart != sprite_get_number(sprSideArt) + 1
{
	gotSideArt = true;
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
if instance_exists(CrackScreen)
{
	var t = CrackScreen.crackTime;
	var sy = screenY + (t*scale);
	draw_surface_part_ext
	(
		application_surface,
		0,
		0,
		surface_get_width(application_surface)*0.5,
		surface_get_height(application_surface),
		screenX - (frac(viewX)*scale),
		sy - (frac(viewY)*scale),
		scale,
		scale,
		c_white,
		1.0
	)
	sy -= surface_get_height(application_surface)*scale;
	draw_surface_part_ext
	(
		application_surface,
		0,
		0,
		surface_get_width(application_surface)*0.5,
		surface_get_height(application_surface),
		screenX - (frac(viewX)*scale),
		sy - (frac(viewY)*scale),
		scale,
		scale,
		c_white,
		1.0
	)
	sy = screenY - (t*scale);
	draw_surface_part_ext
	(
		application_surface,
		surface_get_width(application_surface)*0.5,
		0,
		surface_get_width(application_surface)*0.5,
		surface_get_height(application_surface),
		screenX - (frac(viewX)*scale) + (surface_get_width(application_surface)*0.5*scale),
		sy - (frac(viewY)*scale),
		scale,
		scale,
		c_white,
		1.0
	)
	sy += surface_get_height(application_surface)*scale;
	draw_surface_part_ext
	(
		application_surface,
		surface_get_width(application_surface)*0.5,
		0,
		surface_get_width(application_surface)*0.5,
		surface_get_height(application_surface),
		screenX - (frac(viewX)*scale) + (surface_get_width(application_surface)*0.5*scale),
		sy - (frac(viewY)*scale),
		scale,
		scale,
		c_white,
		1.0
	)
}
else
{
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
	);
}
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
if !gotSideArt
draw_rectangle(l,b,r,b-margin,false);
//Left
draw_rectangle(l,t,l-margin,b,false);
//Right
if !gotSideArt
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
if instance_exists(KillKill) && KillKill.image_index > 2
{
	//gpu_set_blendmode_ext(bm_inv_src_colour, bm_src_colour);
	gpu_set_blendmode(bm_subtract);
	draw_sprite_ext(sprRadial,1,l,t,(wp/256) * scale,(hp/256) * scale,0,make_colour_rgb(0,255,255),
	lerp(0.2,1,clamp((KillKill.image_index+1)/KillKill.image_number - 3,0,1)));
	gpu_set_blendmode(bm_normal);
}
if instance_exists(VoidStyle) && VoidStyle.image_index < 8
{
	gpu_set_blendmode(bm_subtract);
	var a = 1;
	var voidTime = 0;
	if (VoidStyle.existTime > 0)
		voidTime = sin((VoidStyle.existTime/(VoidStyle.totalTime*0.5))*1.57);
	a = lerp(0,1,clamp(voidTime,0,1));
	if a > 0
	draw_sprite_ext(sprRadial,0,l,t,(wp/256) * scale,(hp/256) * scale,0,c_white,a);
	gpu_set_blendmode(bm_normal);
}
if instance_exists(VoidDeath)
{
	gpu_set_blendmode(bm_subtract);
	draw_sprite_ext(sprRadial,0,l,t,(wp/256) * scale,(hp/256) * scale,0,c_white,1);
	gpu_set_blendmode(bm_normal);
}
if instance_exists(DarkOverlay)
{
	gpu_set_blendmode(bm_subtract);
	repeat(instance_number(DarkOverlay))
	{
		draw_sprite_ext(sprRadial,0,l,t,(wp/256) * scale,(hp/256) * scale,0,c_white,1);
	}
	gpu_set_blendmode(bm_normal);	
}

if instance_exists(VoidRipperBurst)
{
	gpu_set_blendmode(bm_subtract);
	var a = 1;
	var voidTime = 0;
	if VoidRipperBurst.alarm[0] > 0
		voidTime = sin((15/(VoidRipperBurst.alarm[0]*0.5))*1.57);
	a = lerp(0,1,clamp(voidTime,0,1));
	if a > 0
	draw_sprite_ext(sprRadial,0,l,t,(wp/256) * scale,(hp/256) * scale,0,c_white,a);
	gpu_set_blendmode(bm_normal);
}

if instance_exists(FadeToBlackToCredits)
{
	draw_set_alpha(FadeToBlackToCredits.alpha);
	draw_rectangle_colour(l,t,r,b,c_black,c_black,c_black,c_black,false);
	draw_set_alpha(1);
}
shader_reset();