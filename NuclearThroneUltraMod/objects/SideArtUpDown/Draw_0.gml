draw_sprite(sprite_index,UberCont.opt_sideart,x,y)
//draw_sprite(sprite_index,UberCont.opt_gamemode,x,y)
//draw_self();
if mouse_check_button_pressed(mb_left) and UberCont.mouse__x > x and UberCont.mouse__x < x+8 and UberCont.mouse__y > y and UberCont.mouse__y < y+8
{
	snd_play_2d(sndClick);
if UberCont.opt_sideart > 0
UberCont.opt_sideart -= 1
else
UberCont.opt_sideart = sprite_get_number(sprSideArt) - 1;

}
if mouse_check_button_pressed(mb_left) and UberCont.mouse__x > x+10 and UberCont.mouse__x < x+18 and UberCont.mouse__y > y and UberCont.mouse__y < y+8
{
	snd_play_2d(sndClick);
if UberCont.opt_sideart < sprite_get_number(sprSideArt) - 1
UberCont.opt_sideart += 1
else
UberCont.opt_sideart = 0;
}

x=round(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+10+string_width(string_hash_to_newline("00")))
y=round(__view_get( e__VW.YView, 0 )+88+8)