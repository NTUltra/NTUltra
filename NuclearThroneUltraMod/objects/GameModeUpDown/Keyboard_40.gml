/// @description step
if holdDownArrow <= 0
{
	holdDownArrow = holdDelay;
	holdDelay = max(holdDelay - holdDelayDecrease, 2);
	gamemodenr += 1
	if gamemodenr > maxgamemode
	{
		gamemodenr = 1;
	}
	scroll = scrollOffset - lerp(0,totalHeight,max(1,gamemodenr)/maxgamemode);
}