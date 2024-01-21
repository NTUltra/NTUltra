/// @description Draw open menu
if (hasNoMenuOpen()
 && race != 0 && ultraOpen)
{
	var xo = 0;
	if UberCont.opt_sideart == sprite_get_number(sprSideArt) + 1
		xo = 108;
	scrDrawUltraMenu(race, Menu.widescreen);
	draw_sprite_ext(sprLoadOutArrow,1,__view_get( e__VW.XView, 0 )+xo+300,__view_get( e__VW.YView, 0 )+arrowOpenerY,wepopenscale,wepopenscale,0,c_white,wepopenscale-0.1);
	draw_sprite_ext(sprUltraInfo,0,sx-12 - 24,__view_get( e__VW.YView, 0 )+64,ultraScale,ultraScale,0,c_white,ultraScale-0.1);
	
}