draw_sprite(sprite_index,UberCont.opt_fulscrn,x,y)
if UberCont.mouse__x > x and UberCont.mouse__x < x+8 and UberCont.mouse__y > y and UberCont.mouse__y < y+8
{
	draw_set_valign(fa_top);
	draw_set_halign(fa_left);
	var yy = y;
	if UberCont.opt_crosshair == sprite_get_number(sprCrosshair)
		yy = y-8;
	draw_text(x+12,yy,string_hash_to_newline("HOTKEY: F5"))
	if mouse_check_button_pressed(mb_left)
	{
		snd_play_2d(sndClick);
		if UberCont.opt_fulscrn = 0
			UberCont.opt_fulscrn = 1
		else
			UberCont.opt_fulscrn = 0

		window_set_fullscreen(UberCont.opt_fulscrn)
		if UberCont.opt_sideart == sprite_get_number(sprSideArt) + 1
		{
			scrEnableBigScreen();
		}
		else {
			scrDisableBigScreen();	
		}
	}
}
x=round(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+10+string_width(string_hash_to_newline("OFF")))
y=round(__view_get( e__VW.YView, 0 )+72)


