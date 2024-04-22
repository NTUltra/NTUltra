/// @description HUD
if !instance_exists(MenuGen)
{
    if !surface_exists(hudSurface) || hudSurface == -1
    {
        hudSurface = surface_create(camera_get_view_width(view_camera[0]),camera_get_view_height(view_camera[0]));
    }
    surface_set_target(hudSurface);
    draw_clear_alpha(c_black,0);
	scrDrawGameOver();
    scrDrawHUD();
    surface_reset_target();
	if UberCont.opt_sideart != sprite_get_number(sprSideArt) + 1
	{
		var s = fourThreeScale * UberCont.opt_resolution_scale;
	}
	else
	{
		var s = display_get_gui_width()/camera_get_view_width(view_camera[0]);
	}
    draw_surface_ext(hudSurface,screenX,screenY,s,s,0,c_white,1);
	with TextHandler
	{
		if text != ""
		{
			
			draw_set_valign(fa_middle);
			draw_set_halign(fa_center);
			var vx = 0;//camera_get_view_x(view_camera[0]);
			var vy = 0//camera_get_view_y(view_camera[0]);
			var vw = display_get_gui_width();//camera_get_view_width(view_camera[0]);
			var vh = display_get_gui_height();//camera_get_view_height(view_camera[0]);
			if useFont
			{
				draw_set_font(fntVoid);
				vx += random_range(8,-8) * s;
				vy += random_range(8,-8) * s;
			}
			draw_rectangle_colour(0,vh,vw, vy + vh - (32 * s),c_black,c_black,c_black,c_black,false);
			draw_text_transformed(vx + vw*0.5, vy + vh - (16 * s), text,s,s,0);
			draw_set_valign(fa_top);
			draw_set_halign(fa_left);
			if useFont
				draw_set_font(fntM);
		}
	}
}