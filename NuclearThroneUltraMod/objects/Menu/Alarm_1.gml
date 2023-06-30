/// @description gmScroll
gmScroll += 4/max(1,Menu.gmwidth);
if gmScroll >= 1
{
	gmScroll = 1;
	alarm[2] = 15;
}
else
	alarm[1] = 1;