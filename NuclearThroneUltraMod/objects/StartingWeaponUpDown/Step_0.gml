/// @description xxx
if mouse_check_button_pressed(mb_left) and UberCont.mouse__x > x and UberCont.mouse__x < x+8 and UberCont.mouse__y > y and UberCont.mouse__y < y+8
{
	snd_play_2d(sndClick);
if wep > 0
wep -= 1;
else
wep=maxwep;
    
}

if mouse_check_button_pressed(mb_left) and UberCont.mouse__x > x+10 and UberCont.mouse__x < x+18 and UberCont.mouse__y > y and UberCont.mouse__y < y+8
{
	snd_play_2d(sndClick);
if wep < maxwep
wep += 1
else
wep=0;
}

//steps of 10
if mouse_check_button_pressed(mb_left) and UberCont.mouse__x > x+20 and UberCont.mouse__x < x+8+20 and UberCont.mouse__y > y and UberCont.mouse__y < y+8
{
	snd_play_2d(sndClick);
    repeat(10)
    {
    if wep > 0
    wep -= 1;
    else
    wep=maxwep;
    }
}

if mouse_check_button_pressed(mb_left) and UberCont.mouse__x > x+10+20 and UberCont.mouse__x < x+18+20 and UberCont.mouse__y > y and UberCont.mouse__y < y+8
{
	snd_play_2d(sndClick);
    repeat(10)
    {
    if wep < maxwep
    wep += 1
    else
    wep=0;
    }
}