draw_sprite(sprite_index,UberCont.opt_sideart,x,y)
//draw_sprite(sprite_index,UberCont.opt_gamemode,x,y)
//draw_self();
if mouse_check_button_pressed(mb_left) and UberCont.mouse__x > x and UberCont.mouse__x < x+8 and UberCont.mouse__y > y and UberCont.mouse__y < y+8
{
	//PREVIOUS
	snd_play_2d(sndClick);
	if UberCont.opt_sideart == sprite_get_number(sprSideArt) + 2
	{
		scrDisableBigScreen();
	}
	else if UberCont.opt_sideart == sprite_get_number(sprSideArt) + 1
	{
		scrDisableVeryBigScreen();
	}
	if UberCont.opt_sideart > 0
		UberCont.opt_sideart -= 1
	else
		UberCont.opt_sideart = sprite_get_number(sprSideArt) + 2
	if UberCont.opt_sideart == sprite_get_number(sprSideArt) + 1
	{
		scrEnableVeryBigScreen();
	}
	else if UberCont.opt_sideart == sprite_get_number(sprSideArt) + 2
	{
		scrEnableBigScreen();
	}
}
if mouse_check_button_pressed(mb_left) and UberCont.mouse__x > x+10 and UberCont.mouse__x < x+18 and UberCont.mouse__y > y and UberCont.mouse__y < y+8
{
	//NEXT
	snd_play_2d(sndClick);
	if UberCont.opt_sideart == sprite_get_number(sprSideArt) + 2
	{
		scrDisableBigScreen();
	}
	else if UberCont.opt_sideart == sprite_get_number(sprSideArt) + 1
	{
		scrDisableVeryBigScreen();
	}
	if UberCont.opt_sideart < sprite_get_number(sprSideArt) + 2
		UberCont.opt_sideart += 1
	else
		UberCont.opt_sideart = 0;
	
	if UberCont.opt_sideart == sprite_get_number(sprSideArt) + 2
	{
		scrEnableBigScreen();
	}
	else if UberCont.opt_sideart == sprite_get_number(sprSideArt) + 1
	{
		scrEnableVeryBigScreen();
	}
}
if UberCont.opt_sideart == sprite_get_number(sprSideArt) + 2
{
	draw_set_valign(fa_top);
	draw_set_halign(fa_left);
	draw_text_colour(x+17,y+1,"16:9",c_black,c_black,c_black,c_black,1);
	draw_text_colour(x+18,y,"16:9",c_black,c_black,c_black,c_black,1);
	draw_text_colour(x+18,y+1,"16:9",c_black,c_black,c_black,c_black,1);
	draw_text_colour(x+17,y,"16:9",c_white,c_white,c_white,c_white,1);
}
if UberCont.opt_sideart == sprite_get_number(sprSideArt) + 1
{
	draw_set_valign(fa_top);
	draw_set_halign(fa_left);
	draw_text_colour(x+17,y+1,"21:9",c_black,c_black,c_black,c_black,1);
	draw_text_colour(x+18,y,"21:9",c_black,c_black,c_black,c_black,1);
	draw_text_colour(x+18,y+1,"21:9",c_black,c_black,c_black,c_black,1);
	draw_text_colour(x+17,y,"21:9",c_white,c_white,c_white,c_white,1);
}
if UberCont.opt_sideart == sprite_get_number(sprSideArt)
{
	draw_set_valign(fa_top);
	draw_set_halign(fa_left);
	draw_text_colour(x+17,y+1,"CUSTOM",c_black,c_black,c_black,c_black,1);
	draw_text_colour(x+18,y,"CUSTOM",c_black,c_black,c_black,c_black,1);
	draw_text_colour(x+18,y+1,"CUSTOM",c_black,c_black,c_black,c_black,1);
	draw_text_colour(x+17,y,"CUSTOM",c_white,c_white,c_white,c_white,1);
	var s = 8;
	var xx = x+66;
	draw_sprite(sprToggle,0,xx,y);
	if mouse_check_button_pressed(mb_left) && UberCont.mouse__x > xx and UberCont.mouse__x < xx+s and UberCont.mouse__y > y and UberCont.mouse__y < y+s
	{
		snd_play_2d(sndClick);
		//load in a file
		var sideArtFilePath = get_open_filename(".png", "sideart");
		with UberCont
		{
			UberCont.opt_custom_sideart = sideArtFilePath;
			UberCont.customSideArt = sprite_add(sideArtFilePath,0,false,false,0,0);
			scrSaveGamePreferenceOptions();
		}
	}
}
x=round(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+10+string_width(string_hash_to_newline("00")))
y=round(__view_get( e__VW.YView, 0 )+88)