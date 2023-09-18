draw_sprite(sprite_index,/*UberCont.opt_gamemode*/1,x,y)


///pressing matters
if mouse_check_button_pressed(mb_left) and UberCont.mouse__x > x and UberCont.mouse__x < x+8 and UberCont.mouse__y > y and UberCont.mouse__y < y+8
{
	snd_play_2d(sndClick);
if UberCont.opt_discs > 1
UberCont.opt_discs -= 1;
else
UberCont.opt_discs=100;
    
}
if mouse_check_button_pressed(mb_left) and UberCont.mouse__x > x+10 and UberCont.mouse__x < x+18 and UberCont.mouse__y > y and UberCont.mouse__y < y+8
{
	snd_play_2d(sndClick);
if UberCont.opt_discs < 100
UberCont.opt_discs += 1
else
UberCont.opt_discs=1;
}
draw_set_valign(fa_top);
draw_set_halign(fa_right);
draw_text_color(x+32,y,string_hash_to_newline(string(UberCont.opt_discs)),c_white,c_white,c_white,c_white,1);

draw_text_color(x,y,string_hash_to_newline("DISCS: "),c_white,c_white,c_white,c_white,1);
draw_set_halign(fa_left);

draw_set_valign(fa_bottom);