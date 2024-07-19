/// @description Cycle weapon display open mind
alarm[1] = 30;
currentVisibleWep ++;
if currentVisibleWep >= array_length(weps)
	currentVisibleWep = 0;