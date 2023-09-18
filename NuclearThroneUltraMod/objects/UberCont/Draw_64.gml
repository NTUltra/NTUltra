/// @description Sideart
if opt_sideart == sprite_get_number(sprSideArt) + 1
	exit;
var ww = window_get_width();
var wh = window_get_height()
var wp = view_get_wport(0);
var hp = view_get_hport(0);
var s = ww/wp;
s = min(s,wh/hp);
s /= UberCont.opt_resolution_scale;
var excesswidth = (ww - (wp*s))*0.5
var step = 64*s;
if opt_sideart == sprite_get_number(sprSideArt) && sprite_exists(customSideArt)
{
	var sw = 64*s
	var ws = sw/sprite_get_width(customSideArt);
	var hs = sw/sprite_get_height(customSideArt);
}
if (excesswidth > 0) {
	var tilex = excesswidth-step;
	var tiley = -step;

	do {
		tiley += step;
		if (tiley >= wh && tilex > 0) {
			tilex -= step;
			tiley = 0;
		}
		if opt_sideart == sprite_get_number(sprSideArt) && sprite_exists(customSideArt)
		{
			draw_sprite_ext(customSideArt, 0, tilex, tiley,ws,hs,0,c_white,1);
		}
		else
			draw_sprite_ext(sprSideArt, opt_sideart, tilex, tiley,s,s,0,c_white,1);
	} until (tiley > wh);
	
	tilex = ww-excesswidth;
	tiley = -step;

	do {
		tiley += step;
		if (tiley >= wh && tilex < ww) {
			tilex += step;
			tiley = 0;
		}
		if opt_sideart == sprite_get_number(sprSideArt) && sprite_exists(customSideArt)
		{
			draw_sprite_ext(customSideArt, 0, tilex, tiley,ws,hs,0,c_white,1);
		}
		else
			draw_sprite_ext(sprSideArt, opt_sideart, tilex, tiley,s,s,0,c_white,1);
	} until (tiley > wh);
}
