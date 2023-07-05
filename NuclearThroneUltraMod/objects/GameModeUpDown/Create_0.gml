/*
var al = array_length(UberCont.gamemodeOrder);
for (var i = 0; i < al; i++) {
	if (UberCont.gamemodeOrder[i] == UberCont.opt_gamemode)
		gamemodenr = i;
}*/
gamemodenr = 0;
prevgamemodenr = 0;
scrGameModes();
dailyDone = false;
surf = -1;
scroll = 0;
var yy = 0;
var i = 0;
repeat(maxgamemode)
{
	var h = string_height(string_hash_to_newline(gamemode[gamemodeOrder[i]]));
	yy += h;
	yy += 2;
	i++;
}
totalHeight = yy;
if scrIsOnlyNormalGamemode()
	UberCont.opt_gamemode = [];
scrollOffset = 80;
holdUpArrow = 0;
holdDownArrow = 0;
holdDelayDefault = 10;
holdDelay = holdDelayDefault;
holdDelayDecrease = 1;