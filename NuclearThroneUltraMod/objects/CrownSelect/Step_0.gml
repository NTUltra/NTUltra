if UberCont.mouse__x > x and UberCont.mouse__x < x+32 and UberCont.mouse__y > y and UberCont.mouse__y < y+32 and image_index != crownmax+1 and mouse_check_button_pressed(mb_left) and image_speed = 0
{
snd_play(sndSelect, 0, false, false)
Menu.crown = num
}

