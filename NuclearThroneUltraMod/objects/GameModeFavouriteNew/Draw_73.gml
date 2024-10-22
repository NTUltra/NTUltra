/// @description xxx
if UberCont.mouse__x > x and UberCont.mouse__x < x+8 and UberCont.mouse__y > y and UberCont.mouse__y < y+8
{
	var str = "SET AS NEW FAVOURITE LOADOUT"
	scrDrawTextBackgrounded(x + 2 - string_width(str) * 0.5,y + 9,str);
}