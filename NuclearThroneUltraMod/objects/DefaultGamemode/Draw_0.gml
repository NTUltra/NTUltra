draw_sprite(sprite_index,UberCont.opt_fulscrn,x,y)
draw_set_halign(fa_left);
if mouse_check_button_pressed(mb_left) and UberCont.mouse__x > x and UberCont.mouse__x < x+8 and UberCont.mouse__y > y and UberCont.mouse__y < y+8
{
	snd_play_2d(sndClick);
	var shouldSwap = scrIsOnlyNormalGamemode()
	if UberCont.opt_default_gm == 0
		UberCont.opt_default_gm = 9
	else
		UberCont.opt_default_gm = 0;
	if shouldSwap
	{
		UberCont.opt_gamemode = [UberCont.opt_default_gm];
	}
}
if mouse_check_button_pressed(mb_left) and UberCont.mouse__x > x+10 and UberCont.mouse__x < x+18 and UberCont.mouse__y > y and UberCont.mouse__y < y+8
{
	snd_play_2d(sndClick);
	var shouldSwap = scrIsOnlyNormalGamemode()
	if UberCont.opt_default_gm == 0
		UberCont.opt_default_gm = 9
	else
		UberCont.opt_default_gm = 0;
	if shouldSwap
	{
		UberCont.opt_gamemode = [UberCont.opt_default_gm];
	}
}

x=round(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+10+string_width(string_hash_to_newline("CLASSIC MODE")))
y=round(__view_get( e__VW.YView, 0 )+216)

