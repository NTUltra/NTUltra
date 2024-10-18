/// @description Cloud Fog
var alpha = 0.3;
var xx = __view_get( e__VW.XView, 0 );
//if UberCont.opt_sideart == sprite_get_number(sprSideArt) + 1
//	xx += 106
fogscrollY += 0.007;
var yO = sin(fogscrollY) * 32;
draw_sprite_ext(fogCloud,0,round(xx/480)*480-fogscroll,yO + (round(__view_get( e__VW.YView, 0 )/360)*360),1,1,0,c_white,alpha)
draw_sprite_ext(fogCloud,0,round(xx/480)*480-fogscroll-480,yO + (round(__view_get( e__VW.YView, 0 )/360)*360),1,1,0,c_white,alpha)
draw_sprite_ext(fogCloud,0,round(xx/480)*480-fogscroll+480,yO + (round(__view_get( e__VW.YView, 0 )/360)*360),1,1,0,c_white,alpha)
draw_sprite_ext(fogCloud,0,round(xx/480)*480-fogscroll,yO + (round(__view_get( e__VW.YView, 0 )/360)*360-360),1,1,0,c_white,alpha)
draw_sprite_ext(fogCloud,0,round(xx/480)*480-fogscroll,yO + (round(__view_get( e__VW.YView, 0 )/360)*360+360),1,1,0,c_white,alpha)
draw_sprite_ext(fogCloud,0,round(xx/480)*480-fogscroll-480,yO + (round(__view_get( e__VW.YView, 0 )/360)*360-360),1,1,0,c_white,alpha)
draw_sprite_ext(fogCloud,0,round(xx/480)*480-fogscroll+480,yO + (round(__view_get( e__VW.YView, 0 )/360)*360+360),1,1,0,c_white,alpha)
draw_sprite_ext(fogCloud,0,round(xx/480)*480-fogscroll+480,yO + (round(__view_get( e__VW.YView, 0 )/360)*360-360),1,1,0,c_white,alpha)
draw_sprite_ext(fogCloud,0,round(xx/480)*480-fogscroll-480,yO + (round(__view_get( e__VW.YView, 0 )/360)*360+360),1,1,0,c_white,alpha)

if UberCont.normalGameSpeed == 60
	fogscroll += 0.25
else
	fogscroll += 0.5
if fogscroll > 480
fogscroll -= 480

