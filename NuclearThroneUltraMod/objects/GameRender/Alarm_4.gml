/// @description gmScroll
gmScroll += 4/max(1,gmwidth);
if gmScroll >= 1
{
	gmScroll = 1;
	alarm[5] = 15;
}
else
	alarm[4] = 1;