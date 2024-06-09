function scrDrawCharSelect() {
	if widescreen < 48
		widescreen += 8

	mouseover = -1;
	
	/*
	with CampChar{
	if position_meeting(UberCont.mouse__x,UberCont.mouse__y,self) and y > view_yview+48 and y < view_yview+view_hview-48 and UberCont.mouse__y > view_yview+Menu.widescreen and UberCont.mouse__y < view_yview+view_hview-Menu.widescreen
	other.mouseover = num}*/
	var tx = mouse_x;
	var ty = mouse_y;
	with CharSelect{
		if position_meeting(UberCont.mouse__x,UberCont.mouse__y,self)// and y > view_yview+48 and y < view_yview+view_hview-48
		{
			other.mouseover = num
			tx = x + 12;
			ty = y;
		}
	}
	if (!instance_exists(LoadoutSelect) || LoadoutSelect.wepmenuopen)
		return;
	var showExplain = false;
	if mouseover == race and race != 0
		showExplain = true;
	//extra = 96
	else if mouseover != -1
		showExplain = false;
	var bottom = __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-widescreen - 8;
	var xx = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) - 8;
	if showExplain and race != 0
	{
		explainLerp += 0.3;
		
		if explainLerp > 3
			explainLerp = 3;
		var sx = lerp(xx + 64,xx - 24,explainLerp-2);
		var sy = bottom - 79;
		draw_sprite(sprExplainOutline,0,sx,sy);
		var spr = sprExplain1;
		switch (race)
		{
			case 1:
				spr = sprExplain1;
			break;
			case 2:
				spr = sprExplain2;
			break;
			case 3:
				spr = sprExplain3;
			break;
			case 4:
				spr = sprExplain4;
			break;
			case 5:
				spr = sprExplain6;
			break;
			case 6:
				spr = sprExplain6;
			break;
			case 7:
				spr = sprExplain7;
			break;
			case 8:
				spr = sprExplain8;
			break;
			case 9:
				spr = sprExplain9;
			break;
			case 10:
				spr = sprExplain10;
			break;
			case 11:
				spr = sprExplain11;
			break;
			case 12:
				spr = sprExplain12;
			break;
			case 13:
				spr = sprExplain13;
			break;
			case 14:
				spr = sprExplain14;
			break;
			case 15:
				spr = sprExplain15;
			break;
			case 16:
				spr = sprExplain16;
			break;
			case 17:
				spr = sprExplain17;
			break;
			case 18:
				spr = sprExplain18;
			break;
			case 19:
				spr = sprExplain19;
			break;
			case 20:
				spr = sprExplain20;
			break;
			case 21:
				spr = sprExplain21;
			break;
			case 22:
				spr = sprExplain22;
			break;
			case 23:
				spr = sprExplain23;
			break;
			case 24:
				spr = sprExplain24;
			break;
			case 25:
				spr = sprExplain25;
			break;
			case 26:
				spr = sprExplain26;
			break;
			case 27:
				spr = sprExplain27;
			break;
			default:
				spr = sprExplain1
			break;
		}
		draw_sprite(spr,wave,sx,sy);
		if explainLerp > 2
			wave += 0.4;
	}
	else
	{
		wave = 0;
		explainLerp = 0;
	}
	//extra = 0
	draw_set_valign(fa_bottom);
	draw_set_halign(fa_left);
	draw_set_color(c_white);
	var n = "";
	if race > 0 && mouseover != -1 && UberCont.race_have[race] = 1
	{
		var lg = make_colour_rgb(160,160,160);
		draw_set_color(lg);
		var charTxtRaw = race_acti[race];
		var charTxt = scrReplaceAllColourCodes(string_hash_to_newline(charTxtRaw));
		var col = make_colour_rgb(59,46,66);
		xx = camera_get_view_x(view_camera[0]) + 6// + string_width(charTxtRaw);
		//draw_sprite(sprLoadoutHoverArrow,0,UberCont.mouse__x,yy);
		var yy = bottom - 29//string_height(charTxtRaw); 14
		
		if race == 20 || race == 26
		{
			yy -= 30;
		}
		draw_rectangle_colour_curved(
		xx - 2,
		yy - string_height(charTxt) - 2,
		xx + string_width(charTxt) + 2,
		yy + 1,
		col);
		draw_text_colour(xx + 1,yy,charTxt,c_black,c_black,c_black,c_black,1);
		draw_text_colour(xx + 1,yy + 1,charTxt,c_black,c_black,c_black,c_black,1);
		scrDrawTextColours(xx,yy,charTxtRaw);
		draw_set_color(c_white);
		//draw_sprite_ext(sprRMBIcon, 0, xx + string_width(charTxt) + 5, yy - 5 - (string_height(charTxt) * 0.5),1,1,0,c_black,1);
		draw_sprite(sprRMBIcon, 0, xx + string_width(charTxt) + 6, yy - 4 - (string_height(charTxt) * 0.5));
		draw_set_color(lg);
		yy -= string_height(charTxt) + 6;
		charTxtRaw = race_pass[race];
		charTxt = scrReplaceAllColourCodes(string_hash_to_newline(charTxtRaw));
		draw_rectangle_colour_curved(
		xx - 2,
		yy - string_height(charTxt) - 2,
		xx + string_width(charTxt) + 2,
		yy + 1,
		col);
		draw_text_colour(xx + 1,yy,charTxt,c_black,c_black,c_black,c_black,1);
		draw_text_colour(xx + 1,yy + 1,charTxt,c_black,c_black,c_black,c_black,1);
		scrDrawTextColours(xx,yy,charTxtRaw);
		draw_set_color(c_white);
	}
	
	
	
	draw_set_halign(fa_left);
	return
//Old shit
	draw_set_valign(fa_bottom)

	draw_set_halign(fa_right)


	/*if mouseover = -1
	txt2 = string(race_name[race])+"#"+string(race_pass[race])+"# "+string(race_acti[race])
	else */
	if mouseover != -1
	{
		if UberCont.race_have[mouseover] = 1
			txt2 = string(race_name[mouseover])+"#"+string(race_pass[mouseover])+"# "+string(race_acti[mouseover])
		else
			txt2 = "[LOCKED]#"+string(race_lock[mouseover])
	}
	
	var colourDraw = txt2;
	txt2 = scrReplaceAllColourCodes(txt2);

	if mouseover = -1
	drawx = __view_get( e__VW.XView, 0 )+14+race*22
	else
	drawx = __view_get( e__VW.XView, 0 )+14+mouseover*22
	drawy = __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-widescreen


	if drawx-string_width(string_hash_to_newline(txt2))/2-2 < __view_get( e__VW.XView, 0 )+2
	drawx = __view_get( e__VW.XView, 0 )+4+string_width(string_hash_to_newline(txt2))/2

	if extra=14
	extra =1;

	if drawx+string_width(string_hash_to_newline(txt2))/2+2+extra > __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )-2
	drawx = __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )-4-string_width(string_hash_to_newline(txt2))/2-extra

if mouseover != -1
{
	/*
	draw_set_color(c_black)
	draw_set_alpha(0.8)
	draw_rectangle(drawx-string_width(string_hash_to_newline(txt2))/2-2-32,drawy-17-string_height(string_hash_to_newline(txt2)),drawx+extra+string_width(string_hash_to_newline(txt2))/2+2,drawy-12,0)
	draw_set_alpha(1)
	draw_sprite_ext(sprMenuPointer,0,__view_get( e__VW.XView, 0 )+14+mouseover*22,drawy-12,1,1,0,c_white,0.8)
	*/
/*
	draw_text(drawx+string_width(string_hash_to_newline(txt2))/2,drawy-13,string_hash_to_newline(string(txt2)))
	draw_text(drawx+string_width(string_hash_to_newline(txt2))/2+1,drawy-13,string_hash_to_newline(string(txt2)))
	draw_text(drawx+string_width(string_hash_to_newline(txt2))/2+1,drawy-14,string_hash_to_newline(string(txt2)))
	draw_set_color(make_colour_rgb(160,160,160))
	scrDrawTextColours(drawx+string_width(string_hash_to_newline(txt2))/2,drawy-14,colourDraw)
	*/
}
	draw_set_color(c_white)

	if mouseover != -1
	{
	/*draw_text(drawx+string_width(string_hash_to_newline(txt2))/2,drawy-14-string_height(string_hash_to_newline(txt2))+string_height(string_hash_to_newline(race_name[race])),string_hash_to_newline(string(race_name[race])))
	else*/
		if UberCont.race_have[mouseover] = 1
			draw_text(drawx+string_width(string_hash_to_newline(txt2))/2,drawy-14-string_height(string_hash_to_newline(txt2))+string_height(string_hash_to_newline(race_name[mouseover])),string_hash_to_newline(string(race_name[mouseover])))
		else
			draw_text(drawx+string_width(string_hash_to_newline(txt2))/2,drawy-14-string_height(string_hash_to_newline(txt2))+string_height(string_hash_to_newline(race_name[mouseover])),string_hash_to_newline("[LOCKED]"))
	}
	

	img += 0.1
/*
	if mouseover = -1
	draw_sprite(sprRMBIcon,-1,drawx+string_width(string_hash_to_newline(txt2))/2-string_width(string_hash_to_newline(scrReplaceAllColourCodes(race_acti[race])))-8,drawy-22)
	else */
	if mouseover != -1 && UberCont.race_have[mouseover] == 1
		draw_sprite(sprRMBIcon,0,drawx+string_width(string_hash_to_newline(txt2))/2-string_width(string_hash_to_newline(scrReplaceAllColourCodes(race_acti[mouseover])))-8,drawy-22)


}
