draw_sprite(sprite_index,0,x,y)
draw_set_valign(fa_top);
draw_set_halign(fa_left);
draw_text(x+8,y,"LOAD IN FILE");
if mouse_check_button_pressed(mb_left) and UberCont.mouse__x > x and UberCont.mouse__x < x+8 and UberCont.mouse__y > y and UberCont.mouse__y < y+8
{
	snd_play_2d(sndClick);
	var file = get_open_filename_ext("json file|*.json", "custom_survival_wave_template.txt",game_save_id+"\CustomSurvivalArena","Load in a custom survival arena");
	debug(file);
	with UberCont
	{
		opt_custom_survival = file;
		scrSave();
	}
}
if !surface_exists(surf)
{
	surf = surface_create(surfWidth,64);
}
var str = UberCont.opt_custom_survival
var w = max(0,string_width(str)-surfWidth);
var xx = lerp(
-w,0,scroll)
surface_set_target(surf);
	draw_clear_alpha(c_black,0);
	draw_text(xx,1,UberCont.opt_custom_survival);
surface_reset_target();
draw_surface(surf,x,y+8);
//draw_text_ext(x,y+8,UberCont.opt_custom_survival,0,64);