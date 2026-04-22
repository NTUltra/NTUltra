draw_sprite(sprite_index,UberCont.opt_fulscrn,x,y)
draw_set_halign(fa_left);
if mouse_check_button_pressed(mb_left) and UberCont.mouse__x > x and UberCont.mouse__x < x+8 and UberCont.mouse__y > y and UberCont.mouse__y < y+8
{
	snd_play_2d(sndClick);
	if UberCont.opt_resolution_scale <= 1
		UberCont.opt_resolution_scale = 8;
	else
		UberCont.opt_resolution_scale *= 0.5;
		
	if UberCont.opt_sideart == sprite_get_number(sprSideArt) + 2
	{
		scrEnableBigScreen();
	}
	else if UberCont.opt_sideart == sprite_get_number(sprSideArt) + 1
	{
		scrEnableVeryBigScreen();
	}
	else {
		scrDisableBigScreen();	
	}
}
else if mouse_check_button_pressed(mb_left) and UberCont.mouse__x > x+10 and UberCont.mouse__x < x+18 and UberCont.mouse__y > y and UberCont.mouse__y < y+8
{
	snd_play_2d(sndClick);
	if UberCont.opt_resolution_scale >= 8
		UberCont.opt_resolution_scale = 1;
	else
		UberCont.opt_resolution_scale *= 2;
	if UberCont.opt_sideart == sprite_get_number(sprSideArt) + 2
	{
		scrEnableBigScreen();
	}
	else if UberCont.opt_sideart == sprite_get_number(sprSideArt) + 1
	{
		scrEnableVeryBigScreen();
	}
	else {
		scrDisableBigScreen();	
	}
}

draw_set_valign(fa_top);

//jokes now
if UberCont.opt_resolution_scale == 4
	draw_text(x+20,y,"PRESS F7\nTO REVERT")
else if UberCont.opt_resolution_scale > 4
	draw_text(x+20,y,"WARNING MAY\nAFFECT\nPERFORMANCE")
x=round(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+10+string_width("16X"))
y=round(__view_get( e__VW.YView, 0 )+96)
