/// @description Draw popup weapon
draw_set_halign(fa_middle);
draw_set_valign(fa_bottom);
var bkcol = make_colour_rgb(68,29,94);//make_colour_rgb(51,20,60);//c_dkgray
var outcol = make_colour_rgb(51,20,60);
if enablePopUp == 1
{
	//Weapon popup
	var ww = 102;
	var offset = 0.5;
	if (real(popupEntry[popUpIndex+2]) != 0)//Three weapons
	{
		ww *= 1.5;
		offset = 0.75;
	}
	var wh = 36;
	
	var xx = scrPopUpStayInScreenX(ww);
	var yy = scrPopUpStayInScreenY(wh);
	draw_rectangle_color(xx-ww,yy-wh,xx+ww,yy+wh,bkcol,bkcol,bkcol,bkcol,false);
	draw_rectangle_color(xx-ww,yy-wh,xx+ww,yy+wh,outcol,outcol,outcol,outcol,true);
	
	draw_sprite(wep_sprt[real(popupEntry[popUpIndex])],0,xx-ww*offset,yy+12);
	draw_text_ext(xx-ww*offset,yy-4,wep_name[real(popupEntry[popUpIndex])],0,47);
	draw_sprite(wep_sprt[real(popupEntry[popUpIndex+1])],0,xx+ww*offset,yy+12);
	draw_text_ext(xx+ww*offset,yy-4,wep_name[real(popupEntry[popUpIndex+1])],0,47);
	if (real(popupEntry[popUpIndex+2]) != 0)//Three weapons
	{
		draw_sprite(wep_sprt[real(popupEntry[popUpIndex+2])],0,xx,yy+12);
		draw_text_ext(xx,yy-4,wep_name[real(popupEntry[popUpIndex+2])],0,47);
	}
	
}
else if enablePopUp == 2
{
	//Crown popup
	var ww = 72;
	var wh = 24;
	var xx = scrPopUpStayInScreenX(ww);
	var yy = scrPopUpStayInScreenY(wh);
	draw_rectangle_color(xx-ww,yy-wh,xx+ww,yy+wh,bkcol,bkcol,bkcol,bkcol,false);
	draw_rectangle_color(xx-ww,yy-wh,xx+ww,yy+wh,outcol,outcol,outcol,outcol,true);
	
	draw_text_ext(xx,yy-4,string_replace_all(string_replace_all(crown_name[real(popupEntry[popUpIndex])],"[",""),"]",""),0,(ww*2)-2);
	draw_sprite(scrLeaderboardCrown(real(popupEntry[popUpIndex])),0,xx,yy+8);
}
else if enablePopUp == 3
{
	//Ultra popup
	var ww = 72;
	var wh = 24;
	var xx = scrPopUpStayInScreenX(ww);
	var yy = scrPopUpStayInScreenY(wh);
	draw_rectangle_color(xx-ww,yy-wh,xx+ww,yy+wh,bkcol,bkcol,bkcol,bkcol,false);
	draw_rectangle_color(xx-ww,yy-wh,xx+ww,yy+wh,outcol,outcol,outcol,outcol,true);
	
	if popupEntry[popUpIndex[0]] == 1 && popupEntry[popUpIndex[1]] == 2 && popupEntry[popUpIndex[3]] == 4
	{	
		draw_text_ext(xx,yy-4,"FISH CAN GUN",0,(ww*2)-2);
	}
	else if popupEntry[popUpIndex[0]] == 27 && popupEntry[popUpIndex[3]] == 106//race
	{
		if popupEntry[popUpIndex[1]] == 1//bskin
			draw_text_ext(xx,yy-4,"HOT HANDS",0,(ww*2)-2);
		else if popupEntry[popUpIndex[1]] == 2
			draw_text_ext(xx,yy-4,"BOOM HANDS",0,(ww*2)-2);
		else
			draw_text_ext(xx,yy-4,ultra_name[real(popupEntry[popUpIndex[3]])],0,(ww*2)-2);
	}
	else
	{
		if (popupEntry[popUpIndex[2]] != popUpAltUltra)
		{
			//Alternate ultra
			popUpAltUltra = popupEntry[popUpIndex[2]];
			scrUltras(popupEntry[popUpIndex[2]]);
		}
		draw_text_ext(xx,yy-4,ultra_name[real(popupEntry[popUpIndex[3]])],0,(ww*2)-2);
	}
	
	scrDrawLeaderboardUltra(xx,yy+8,popupEntry,popUpIndex[0],popUpIndex[1],popUpIndex[2],popUpIndex[3]);
}


draw_set_halign(fa_left);
draw_set_valign(fa_top);