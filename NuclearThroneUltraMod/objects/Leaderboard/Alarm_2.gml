/// @description Score scrolling for massive kills
killScroll += killScrollAdd
alarm[2] = 1;
if killScroll >= 1
{	
	killScroll = 1;
	killScrollAdd *= -1;
	alarm[2] = 60;
}
else if killScroll <= 0
{
	killScroll = 0;
	killScrollAdd *= -1;
	alarm[2] = 60;
}