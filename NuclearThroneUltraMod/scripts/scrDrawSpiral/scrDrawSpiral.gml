function scrDrawSpiral() {

	draw_set_color(c_black)


	draw_rectangle(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ),__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 ),0)

	with Spiral
	{
	if lanim > 0 and lanim < 6
	{draw_sprite_ext(sprPortalLightning,lanim,__view_get( e__VW.XView, 0 )+x,__view_get( e__VW.YView, 0 )+y,image_xscale,image_yscale,image_angle+langle,c_white,1)
	draw_sprite_ext(sprPortalLightning,lanim,__view_get( e__VW.XView, 0 )+x,__view_get( e__VW.YView, 0 )+y,image_xscale,image_yscale,image_angle+langle,c_black,0.4-image_xscale/2)}
	draw_sprite_ext(sprite_index,-1,__view_get( e__VW.XView, 0 )+x,__view_get( e__VW.YView, 0 )+y,image_xscale,image_yscale,image_angle,c_white,1)
	draw_sprite_ext(sprite_index,-1,__view_get( e__VW.XView, 0 )+x,__view_get( e__VW.YView, 0 )+y,image_xscale,image_yscale,image_angle,c_black,0.8-image_xscale)
	}

	with SpiralDebris
	{
	draw_sprite_ext(sprite_index,-1,__view_get( e__VW.XView, 0 )+x,__view_get( e__VW.YView, 0 )+y,image_xscale,image_yscale,image_angle,c_white,1)
	draw_sprite_ext(sprite_index,-1,__view_get( e__VW.XView, 0 )+x,__view_get( e__VW.YView, 0 )+y,image_xscale,image_yscale,image_angle,c_black,1-image_xscale)
	}


	with SpiralStar
	{
	draw_sprite_ext(sprite_index,-1,__view_get( e__VW.XView, 0 )+x,__view_get( e__VW.YView, 0 )+y,image_xscale,image_yscale,image_angle,c_white,1)
	draw_sprite_ext(sprite_index,-1,__view_get( e__VW.XView, 0 )+x,__view_get( e__VW.YView, 0 )+y,image_xscale,image_yscale,image_angle,c_black,1-image_xscale)
	}

	with SpiralCont
	{
	fishx = fishx-(fishx-(__view_get( e__VW.XView, 0 )+x))*0.01
	fishy = fishy-(fishy-(__view_get( e__VW.YView, 0 )+y))*0.01

	if instance_exists(Player)
		draw_sprite_ext(Player.spr_hurt,1,fishx,fishy,0.8+sin(image_angle/200)/5,0.8+sin(image_angle/200)/5,-image_angle*2,c_white,1)

	draw_rectangle(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ),__view_get( e__VW.YView, 0 )+48,0)
	draw_rectangle(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 ),__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ),__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-48,0)
	}



}
