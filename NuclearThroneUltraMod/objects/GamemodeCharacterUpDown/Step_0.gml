/// @description xxx
if mouse_check_button_pressed(mb_left) and UberCont.mouse__x > x and UberCont.mouse__x < x+8 and UberCont.mouse__y > y and UberCont.mouse__y < y+8
{
	snd_play_2d(sndClick);
	//do {
	with UberCont
	{
		if opt_gm_char > 0
			opt_gm_char -= 1;
		else
			opt_gm_char = racemax;
	}
    //} until (UberCont.any_wep_found[wep])
}

if mouse_check_button_pressed(mb_left) and UberCont.mouse__x > x+10 and UberCont.mouse__x < x+18 and UberCont.mouse__y > y and UberCont.mouse__y < y+8
{
	snd_play_2d(sndClick);
	//do {
	with UberCont
	{
		if opt_gm_char < racemax
			opt_gm_char += 1
		else
			opt_gm_char = 0;
	}
	//} until (UberCont.any_wep_found[wep])
}