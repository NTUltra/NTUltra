draw_sprite(sprite_index,UberCont.opt_enemy_xray,x,y)
	draw_set_valign(fa_top);

if UberCont.mouse__x > x and UberCont.mouse__x < x+8 and UberCont.mouse__y > y and UberCont.mouse__y < y+8
{
	if mouse_check_button_pressed(mb_left) 
	{
		snd_play_2d(sndClick);
	if UberCont.opt_enemy_xray = 0
	UberCont.opt_enemy_xray = 1
	else
	UberCont.opt_enemy_xray = 0

	}
	var str = "SHOWS ENEMIES\nBEHIND WALLS"
	draw_text_colour(x+8,y+1-8,str,c_black,c_black,c_black,c_black,1)
	draw_text_colour(x+9,y-8,str,c_black,c_black,c_black,c_black,1)
	draw_text_colour(x+9,y+1-8,str,c_black,c_black,c_black,c_black,1)
	draw_text(x+8,y-8,str)
}
/*else
{
	if UberCont.opt_enemy_xray == 1
	{
		draw_text_colour(x+8,y+1,"PERFORMATIVE!",c_black,c_black,c_black,c_black,1)
		draw_text_colour(x+9,y,"PERFORMATIVE!",c_black,c_black,c_black,c_black,1)
		draw_text_colour(x+9,y+1,"PERFORMATIVE!",c_black,c_black,c_black,c_black,1)
		draw_text(x+8,y,"PERFORMATIVE!")
	}
}*/
x=round(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+10+string_width(string_hash_to_newline("OFF")))
y=round(__view_get( e__VW.YView, 0 )+80)
