/// @description gmScroll
gmScroll -= 2/max(1,gmwidth);
if gmScroll <= 0
{
	gmScroll = 0;
	alarm[1] = 15;
}
else
	alarm[2] = 1;