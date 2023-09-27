/// @description Blink
blink--
if blink > 0// || !visible
{
alarm[3] = 2;
visible = !visible;
	if visible
	{
		topspr = realTopSpr;
		outspr = realOutSpr;
	}
	else
	{
		topspr = mskPickupThroughWall;
		outspr = mskPickupThroughWall;
	}
}
else
{
	instance_destroy();	
}