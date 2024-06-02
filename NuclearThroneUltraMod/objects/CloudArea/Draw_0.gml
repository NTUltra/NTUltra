/// @description Cloud Fog

draw_sprite_ext(sprCloudsFog,0,round(__view_get( e__VW.XView, 0 )/480)*480-fogscroll,round(__view_get( e__VW.YView, 0 )/360)*360,1,1,0,c_white,0.1)
draw_sprite_ext(sprCloudsFog,0,round(__view_get( e__VW.XView, 0 )/480)*480-fogscroll-480,round(__view_get( e__VW.YView, 0 )/360)*360,1,1,0,c_white,0.1)
draw_sprite_ext(sprCloudsFog,0,round(__view_get( e__VW.XView, 0 )/480)*480-fogscroll+480,round(__view_get( e__VW.YView, 0 )/360)*360,1,1,0,c_white,0.1)
draw_sprite_ext(sprCloudsFog,0,round(__view_get( e__VW.XView, 0 )/480)*480-fogscroll,round(__view_get( e__VW.YView, 0 )/360)*360-360,1,1,0,c_white,0.1)
draw_sprite_ext(sprCloudsFog,0,round(__view_get( e__VW.XView, 0 )/480)*480-fogscroll,round(__view_get( e__VW.YView, 0 )/360)*360+360,1,1,0,c_white,0.1)
draw_sprite_ext(sprCloudsFog,0,round(__view_get( e__VW.XView, 0 )/480)*480-fogscroll-480,round(__view_get( e__VW.YView, 0 )/360)*360-360,1,1,0,c_white,0.1)
draw_sprite_ext(sprCloudsFog,0,round(__view_get( e__VW.XView, 0 )/480)*480-fogscroll+480,round(__view_get( e__VW.YView, 0 )/360)*360+360,1,1,0,c_white,0.1)
draw_sprite_ext(sprCloudsFog,0,round(__view_get( e__VW.XView, 0 )/480)*480-fogscroll+480,round(__view_get( e__VW.YView, 0 )/360)*360-360,1,1,0,c_white,0.1)
draw_sprite_ext(sprCloudsFog,0,round(__view_get( e__VW.XView, 0 )/480)*480-fogscroll-480,round(__view_get( e__VW.YView, 0 )/360)*360+360,1,1,0,c_white,0.1)

if UberCont.normalGameSpeed == 60
	fogscroll += 0.25
else
	fogscroll += 0.5
if fogscroll > 480
fogscroll -= 480
