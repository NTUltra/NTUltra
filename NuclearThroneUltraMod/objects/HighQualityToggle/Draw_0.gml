draw_sprite(sprite_index,UberCont.opt_hud_des,x,y)

if UberCont.mouse__x > x and UberCont.mouse__x < x+8 and UberCont.mouse__y > y and UberCont.mouse__y < y+8
{
	if (mouse_check_button_pressed(mb_left))
	{
		snd_play_2d(sndClick);
		if UberCont.opt_hud_des = 0
			UberCont.opt_hud_des = 1
		else
			UberCont.opt_hud_des = 0
	}
	var str = "HOVER OVER HUD\nFOR DESCRIPTION"
	draw_text_colour(x+7,y+1-8,str,c_black,c_black,c_black,c_black,1)
	draw_text_colour(x+8,y-8,str,c_black,c_black,c_black,c_black,1)
	draw_text_colour(x+8,y+1-8,str,c_black,c_black,c_black,c_black,1)
	draw_text(x+7,y-8,str)
}

x=round(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+10+string_width(string_hash_to_newline("OFF")))
y=round(__view_get( e__VW.YView, 0 )+120 + 8)

