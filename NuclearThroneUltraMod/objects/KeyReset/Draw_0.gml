draw_sprite(sprite_index,image_index,x,y);

var txt;
txt="RESET KEYS";
draw_set_valign(fa_bottom);
draw_text_colour(x-string_width(string_hash_to_newline(txt))*0.5,y,string_hash_to_newline(txt),c_white,c_white,c_white,c_white,1);

if mouse_check_button_pressed(mb_left) and UberCont.mouse__x > x and UberCont.mouse__x < x+8 and UberCont.mouse__y > y and UberCont.mouse__y < y+8
{
	snd_play_2d(sndClick);
	UberCont.opt_up=87//W
	UberCont.opt_down=83//S
	UberCont.opt_left=65//A
	UberCont.opt_right=68//D
	UberCont.opt_swap=81//Q
	UberCont.opt_pickup=69//E
}

