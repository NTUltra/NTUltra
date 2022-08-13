/// @description They have names
if (UberCont.isPaused == 0 && UberCont.mouse__x < x+16 and UberCont.mouse__y < y+16 and UberCont.mouse__x > x-16 and UberCont.mouse__y > y-16)
{//name
	draw_set_color(c_white);
	draw_text(x,y-16,name);
}