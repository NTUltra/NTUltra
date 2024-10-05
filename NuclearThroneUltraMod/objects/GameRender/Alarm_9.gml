/// @description WepScroll -
wepScroll -= 1
if wepScroll <= 0
{
	wepScroll = 0;
	alarm[8] = 20;
}
else
	alarm[9] = 1;