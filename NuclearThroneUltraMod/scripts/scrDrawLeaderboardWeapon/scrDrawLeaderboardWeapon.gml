///scrDrawLeaderboardWeapon();
// /@description
///@param
function scrDrawLeaderboardWeapon(entry, startIndex,xx, yy){
	/*
	if (real(entry[startIndex+2]) != 0)//Three weapons
	{
		draw_sprite(wep_sprt[real(entry[startIndex])],0,xx,yy-3);
		xx += 30;
		draw_sprite(wep_sprt[real(entry[startIndex+1])],0,xx,yy-3);
		draw_sprite(wep_sprt[real(entry[startIndex+2])],0,xx-14,yy+6);
	}
	else
	{
		draw_sprite(wep_sprt[real(entry[startIndex])],0,xx,yy);
		//xx += 30;
		draw_sprite(wep_sprt[real(entry[startIndex+1])],0,xx,yy);
	}*/
	var wepI = real(entry[startIndex]);
	if wepI < array_length(wep_sprt)
		draw_sprite(wep_sprt[wepI],0,xx,yy);
	var w = 30*0.5;
	var h = 22*0.5;
	if (mouse_x > xx - w*0.5 && mouse_x < xx + w*1.5 && mouse_y > yy - h && mouse_y < yy + h)
	{
		enablePopUp = 1;
		popupEntry = entry;
		popUpX = xx;
		popUpY = yy;
		popUpIndex = startIndex;
	}
}