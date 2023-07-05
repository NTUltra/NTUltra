/// @description step
if holdUpArrow <= 0
{
	holdUpArrow = holdDelay;
	holdDelay = max(holdDelay - holdDelayDecrease, 2);
	gamemodenr--;
	if gamemodenr < 1
	{
		gamemodenr = maxgamemode;
	}
	scroll = scrollOffset - lerp(0,totalHeight,max(1,gamemodenr)/maxgamemode);
}