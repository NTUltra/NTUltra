///scrDrawLeaderboardCrown();
// /@description
///@param
function scrDrawLeaderboardCrown(entry, startIndex,xx, yy){
	draw_sprite(scrLeaderboardCrown(real(entry[startIndex])),0,xx,yy+2);
	var w = 30*0.5;
	var h = 22*0.5;
	if (mouse_x > xx - w && mouse_x < xx + w && mouse_y > yy - h && mouse_y < yy + h)
	{
		enablePopUp = 2;
		popupEntry = entry;
		popUpX = xx;
		popUpY = yy;
		popUpIndex = startIndex;
	}
}