/// @description WepScroll -
wepScroll -= 2
if wepScroll <= 0
{
	wepScroll = 0;
	alarm[8] = 15;
}
else
	alarm[9] = 1;