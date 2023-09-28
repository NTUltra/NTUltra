/// @description Hover
if UberCont.mouse__x > x and UberCont.mouse__x < x+18 and UberCont.mouse__y > y+2 and UberCont.mouse__y < y+20  && hasNoMenuOpen()
{
	hover = true;
	image_index = 1;
}
else
{
	hover = false;
	image_index = 0;
}
