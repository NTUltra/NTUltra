/// @description xxx
if UberCont.mouse__x > x and UberCont.mouse__x < x+8 and UberCont.mouse__y > y and UberCont.mouse__y < y+8
{
	var str = "USE FAVOURITE LOADOUT"
	scrDrawTextBackgrounded(x - string_width(str) * 0.5,y + 9,str);
}