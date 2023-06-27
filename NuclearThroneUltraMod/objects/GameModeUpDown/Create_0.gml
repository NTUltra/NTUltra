var al = array_length(UberCont.gamemodeOrder);
for (var i = 0; i < al; i++) {
	if (UberCont.gamemodeOrder[i] == UberCont.opt_gamemode)
		gamemodenr = i;
}
scrGameModes();
dailyDone = false;
//gamemodenr=UberCont.opt_gamemode//gamemodeOrder[UberCont.opt_gamemode]; TODO REVERSE MAPPING
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
currentHeight = 0;