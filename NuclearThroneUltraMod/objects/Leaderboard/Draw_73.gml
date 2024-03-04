/// @description Draw popup weapon
draw_set_halign(fa_center);
draw_set_valign(fa_bottom);
var bkcol = make_colour_rgb(68,29,94);//make_colour_rgb(51,20,60);//c_dkgray
var outcol = make_colour_rgb(51,20,60);
if enablePopUp == 1
{
	//Weapon popup
	var ww = 108;
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
	var wepAll = array_length(wep_sprt);
	if (real(popupEntry[popUpIndex]) < wepAll)
	{
		draw_sprite(wep_sprt[real(popupEntry[popUpIndex])],0,xx-ww*offset,yy+14);
		draw_text_ext(xx-ww*offset,yy-2,wep_name[real(popupEntry[popUpIndex])],8,47);
	}
	if (real(popupEntry[popUpIndex+1]) < wepAll)
	{
		draw_sprite(wep_sprt[real(popupEntry[popUpIndex+1])],0,xx+ww*offset,yy+14);
		draw_text_ext(xx+ww*offset,yy-2,wep_name[real(popupEntry[popUpIndex+1])],8,47);
	}
	if (real(popupEntry[popUpIndex+2]) != 0 && real(popupEntry[popUpIndex]) < wepAll)//Three weapons
	{
		draw_sprite(wep_sprt[real(popupEntry[popUpIndex+2])],0,xx,yy+14);
		draw_text_ext(xx,yy-2,wep_name[real(popupEntry[popUpIndex+2])],8,47);
	}
}
else if enablePopUp == 2
{
	//Crown popup
	var ww = 76;
	var wh = 38;
	var xx = scrPopUpStayInScreenX(ww);
	var yy = scrPopUpStayInScreenY(wh);
	draw_rectangle_color(xx-ww,yy-wh,xx+ww,yy+wh,bkcol,bkcol,bkcol,bkcol,false);
	draw_rectangle_color(xx-ww,yy-wh,xx+ww,yy+wh,outcol,outcol,outcol,outcol,true);
	var al = array_length(popupEntry);
	if al == 1
	{
		draw_text_ext(xx,yy-4,string_replace_all(string_replace_all(crown_name[popupEntry[0]],"[",""),"]",""),8,(ww*2)-2);
		scrDrawLeaderboardCrown(popupEntry,xx,yy+8)
	}
	else
	{
		var xxx = xx - ww + 13;
		var xr = xx + ww;
		var xl = xxx;
		var yyy = yy-26;
		var i = 0;
		repeat(al)
		{
			draw_sprite(scrLeaderboardCrown(popupEntry[i]), 0, xxx, yyy);
			xxx += 18;
			if xxx >= xr
			{
				xxx = xl
				yyy += 18;
			}
			i++;
		}
	}
}
else if enablePopUp == 3
{
	//Ultra popup
	var ww = 76;
	var wh = 54;
	var xx = scrPopUpStayInScreenX(ww);
	var yy = scrPopUpStayInScreenY(wh);
	draw_rectangle_color(xx-ww,yy-wh,xx+ww,yy+wh,bkcol,bkcol,bkcol,bkcol,false);
	draw_rectangle_color(xx-ww,yy-wh,xx+ww,yy+wh,outcol,outcol,outcol,outcol,true);
	yy -= wh*0.5;
	if popupEntry[popUpIndex[0]] == 1 && popupEntry[popUpIndex[1]] == 2 && popupEntry[popUpIndex[3]] == 4
	{	
		draw_text_ext(xx,yy-4,"FISH CAN GUN",8,(ww*2)-2);
	}
	else if popupEntry[popUpIndex[0]] == 27 && popupEntry[popUpIndex[3]] == 106//race
	{
		if popupEntry[popUpIndex[1]] == 1//bskin
			draw_text_ext(xx,yy-4,"HOT HANDS",8,(ww*2)-2);
		else if popupEntry[popUpIndex[1]] == 2
			draw_text_ext(xx,yy-4,"BOOM HANDS",8,(ww*2)-2);
		else
			draw_text_ext(xx,yy-4,ultra_name[real(popupEntry[popUpIndex[3]])],8,(ww*2)-2);
	}
	else
	{
		if (popupEntry[popUpIndex[2]] != popUpAltUltra)
		{
			//Alternate ultra
			popUpAltUltra = popupEntry[popUpIndex[2]];
			scrUltras(popupEntry[popUpIndex[2]]);
		}
		draw_text_ext(xx,yy-4,ultra_name[real(popupEntry[popUpIndex[3]])],8,(ww*2)-2);
	}
	
	scrDrawLeaderboardUltra(xx,yy+8,popupEntry,popUpIndex[0],popUpIndex[1],popUpIndex[2],popUpIndex[3]);
	yy += wh * 0.5;
	//Mutation popup
	ww -= 12;
	wh -= 12;
	var xxx = xx - ww;
	var xr = xx + ww;
	var xl = xxx;
	var yyy = yy + 10;
	var muts = popupEntry[popUpIndex[3]+1];
	var al = array_length(muts);
	var i = 0;
	if muts != undefined
	{
		repeat(al)
		{
			draw_sprite(sprSkillIconHUD, muts[i], xxx, yyy);
			xxx += 18;
			if xxx >= xr
			{
				xxx = xl
				yyy += 17;
			}
			i++;
		}
	}
}
else if enablePopUp == 4
{
	//Mutation popup
	var ww = 76;
	var wh = 20;
	var xx = scrPopUpStayInScreenX(ww);
	var yy = scrPopUpStayInScreenY(wh);
	draw_rectangle_color(xx-ww,yy-wh,xx+ww,yy+wh,bkcol,bkcol,bkcol,bkcol,false);
	draw_rectangle_color(xx-ww,yy-wh,xx+ww,yy+wh,outcol,outcol,outcol,outcol,true);
	ww -= 12;
	wh -= 12;
	var xxx = xx - ww;
	var xr = xx + ww;
	var xl = xxx;
	var yyy = yy - wh;
	var muts = popupEntry[popUpIndex];
	var al = array_length(muts);
	var i = 0;
	repeat(al)
	{
		draw_sprite(sprSkillIconHUD, muts[i], xxx, yyy);
		xxx += 18;
		if xxx >= xr
		{
			xxx = xl
			yyy += 18;
		}
		i++;
	}
}

draw_set_halign(fa_left);
draw_set_valign(fa_top);