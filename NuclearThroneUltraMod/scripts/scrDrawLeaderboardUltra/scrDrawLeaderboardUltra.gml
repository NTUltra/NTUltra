///scrDrawLeaderboardUltra();
// /@description
///@param
function scrDrawLeaderboardUltra(xx, yy, entry, raceIndex, bskinIndex, altUltraIndex, ultraIndex){
	if (entry[ultraIndex] != "255")
	{
		var race = real(entry[raceIndex]);
		var bskin = real(entry[bskinIndex]);
		var altUltra = bool(entry[altUltraIndex]);
		if altUltra {
			//alt Ultras
			var ultraSpr = scrLeaderboardAltUltra(real(entry[ultraIndex]));
			if ultraSpr != -1
				draw_sprite(ultraSpr,0,xx,yy-8);
			else
				draw_sprite(sprUltraIconHUD,real(entry[ultraIndex]),xx,yy-8);
		}
		else
		{
			//Hands skins
			//fish skin
			if race == 1 && bskin == 2 && entry[ultraIndex] == 4
			{	
				draw_sprite(sprFishCanGunHUD,0,xx,yy-8);
			}
			else if race == 27 && entry[ultraIndex] == 106//race
			{
				if bskin == 1//bskin
					draw_sprite(sprHothandsHUD,0,xx,yy-8);
				else if bskin == 2
					draw_sprite(sprExplosiveHandsHUD,0,xx,yy-8);
				else
					draw_sprite(sprUltraIconHUD,real(entry[ultraIndex]),xx,yy-8);
			}
			else
			{
				draw_sprite(sprUltraIconHUD,real(entry[ultraIndex]),xx,yy-8);
			}
		}
		var w = 30*0.5;
		var h = 22*0.5;
		if (mouse_x > xx - w*0.5 && mouse_x < xx + w*1.5 && mouse_y > yy - h && mouse_y < yy + h)
		{
			enablePopUp = 3;
			popupEntry = entry;
			popUpX = xx;
			popUpY = yy;
			popUpIndex = [raceIndex, bskinIndex, altUltraIndex, ultraIndex];
		}
	}
	else if array_length(entry[ultraIndex+1]) > 0
	{
		scrDrawLeaderboardMutation(xx + 8,yy,entry,ultraIndex+1);
	}
}