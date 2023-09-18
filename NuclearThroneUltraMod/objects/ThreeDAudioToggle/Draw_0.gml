draw_sprite(sprite_index,UberCont.opt_3d_audio,x,y)

if mouse_check_button_pressed(mb_left) and UberCont.mouse__x > x and UberCont.mouse__x < x+8 and UberCont.mouse__y > y and UberCont.mouse__y < y+8
{
	snd_play_2d(sndClick);
if UberCont.opt_3d_audio = 0
UberCont.opt_3d_audio = 1
else
UberCont.opt_3d_audio = 0

}
x=round(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+10+string_width(string_hash_to_newline("OFF")))
y=round(__view_get( e__VW.YView, 0 )+56)

if UberCont.isPaused=0
{
	if UberCont.opt_3d_audio == 0
		draw_text(x+20,y,"IT IS RECOMMENDED\nTO LEAVE THIS ON")
}