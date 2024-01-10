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
	/*if UberCont.opt_sideart != sprite_get_number(sprSideArt) + 1
	{
		var s = fourThreeScale * UberCont.opt_resolution_scale;
	}
	else
	{*/
		var s = display_get_gui_width()/camera_get_view_width(view_camera[0]);
	//}
    draw_surface_ext(hudSurface,screenX,screenY,s,s,0,c_white,1);
}