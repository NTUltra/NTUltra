/// @description Hover
if hasNoMenuOpen() && UberCont.mouse__x > x-1 and UberCont.mouse__x < x+23 and UberCont.mouse__y > y and UberCont.mouse__y < y+24
{
	hover = true;
}
else
{
	hover = false;	
}
