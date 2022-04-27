draw_sprite(sprite_index,UberCont.opt_loading,x,y)//opt_fulscrn

if mouse_check_button_pressed(mb_left) and UberCont.mouse__x > x and UberCont.mouse__x < x+8 and UberCont.mouse__y > y and UberCont.mouse__y < y+8
{
	snd_play_2d(sndClick);
if UberCont.opt_loading > 0.5
UberCont.opt_loading -= 0.1
}
if mouse_check_button_pressed(mb_left) and UberCont.mouse__x > x+10 and UberCont.mouse__x < x+18 and UberCont.mouse__y > y and UberCont.mouse__y < y+8
{
	snd_play_2d(sndClick);
if UberCont.opt_loading < 4
UberCont.opt_loading += 0.1
}
draw_set_halign(fa_left);
draw_set_valign(fa_top);
if UberCont.opt_loading>3.7
draw_text(x+20,y,string_hash_to_newline("DON'T FORGET#ABOUT TIPS?"))

x=round(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+10+string_width(string_hash_to_newline("100%")))
y=round(__view_get( e__VW.YView, 0 )+160)


