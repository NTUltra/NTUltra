/// @description Draw pause
if alarm[1] > 0
	exit;
gpu_set_blendenable(true);
var w = (camera_get_view_width(view_camera[0]) * resolutionScale)
var wp = view_get_wport(view_camera[0]);
var hp = view_get_hport(view_camera[0]);
if sideArt != sprite_get_number(sprSideArt) + 1
{
	var ww = window_get_width();
	var scale = ww/wp;
	scale = min(scale,window_get_height()/hp);
	var screenX = (ww - (wp * scale))*0.5;
}
else
{
	var scale = window_get_width()/w;
	var screenX = (w - wp) * scale * 0.5;
}
var screenY = (window_get_height() - (hp*scale)) * 0.5;
var t = screenY
var b = screenY + (sprite_get_height(pauseimg) * scale);
var l = screenX
var r = screenX + (sprite_get_width(pauseimg) * scale);
var viewX = camera_get_view_x(view_camera[0]);
var viewY = camera_get_view_y(view_camera[0]);
draw_sprite_ext
(
	pauseimg,
	0,
	screenX - (frac(viewX)*scale),
	screenY - (frac(viewY)*scale),
	scale,
	scale,
	0,
	c_white,
	1.0
)
draw_sprite_ext
(
	hudimg,
	0,
	screenX - (frac(viewX)*scale),
	screenY - (frac(viewY)*scale),
	scale,
	scale,
	0,
	c_white,
	1.0
)