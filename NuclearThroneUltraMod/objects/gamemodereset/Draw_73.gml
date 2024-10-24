/// @description xxx
if UberCont.mouse__x > x and UberCont.mouse__x < x+8 and UberCont.mouse__y > y and UberCont.mouse__y < y+8
{
	var str = "RESET TO " + UberCont.gamemode[UberCont.opt_default_gm] + " MODE"
	scrDrawTextBackgrounded(x - 48,y + 9,str);
}