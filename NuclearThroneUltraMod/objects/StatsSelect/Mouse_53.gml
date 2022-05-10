if UberCont.mouse__x > x and UberCont.mouse__x < x+24 and UberCont.mouse__y > y and UberCont.mouse__y < y+24 and selected = 0 && hasNoMenuOpen()
{
	snd_play_2d(sndClick);
	scrollY = 0;
	selected = 1
with option2
instance_destroy();
with option
instance_destroy();
}
else
alarm[0] = 2;

