function scrDrawCharSelect() {
	if widescreen < 48
	widescreen += 8

	mouseover = -1;
	
	/*
	with CampChar{
	if position_meeting(UberCont.mouse__x,UberCont.mouse__y,self) and y > view_yview+48 and y < view_yview+view_hview-48 and UberCont.mouse__y > view_yview+Menu.widescreen and UberCont.mouse__y < view_yview+view_hview-Menu.widescreen
	other.mouseover = num}*/
	
	with CharSelect{
	if position_meeting(UberCont.mouse__x,UberCont.mouse__y,self)// and y > view_yview+48 and y < view_yview+view_hview-48
	other.mouseover = num}

	if (!instance_exists(LoadoutSelect) || LoadoutSelect.wepmenuopen)
		return;
	var showExplain = false;
	if mouseover == race and race != 0
		showExplain = true;
	//extra = 96
	else if mouseover != -1
		showExplain = false;
	//extra = 0
	

	draw_set_valign(fa_bottom)

	draw_set_halign(fa_right)


	if mouseover = -1
	txt2 = string(race_name[race])+"#"+string(race_pass[race])+"# "+string(race_acti[race])
	else if UberCont.race_have[mouseover] = 1
	txt2 = string(race_name[mouseover])+"#"+string(race_pass[mouseover])+"# "+string(race_acti[mouseover])
	else
	txt2 = "[LOCKED]#"+string(race_lock[mouseover])

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


	draw_set_color(c_black)
	draw_set_alpha(0.8)
	draw_rectangle(drawx-string_width(string_hash_to_newline(txt2))/2-2-32,drawy-17-string_height(string_hash_to_newline(txt2)),drawx+extra+string_width(string_hash_to_newline(txt2))/2+2,drawy-12,0)
	draw_set_alpha(1)

	if mouseover = -1
	draw_sprite_ext(sprMenuPointer,0,__view_get( e__VW.XView, 0 )+14+race*22,drawy-12,1,1,0,c_white,0.8)
	else
	draw_sprite_ext(sprMenuPointer,0,__view_get( e__VW.XView, 0 )+14+mouseover*22,drawy-12,1,1,0,c_white,0.8)

	draw_text(drawx+string_width(string_hash_to_newline(txt2))/2,drawy-13,string_hash_to_newline(string(txt2)))
	draw_text(drawx+string_width(string_hash_to_newline(txt2))/2+1,drawy-13,string_hash_to_newline(string(txt2)))
	draw_text(drawx+string_width(string_hash_to_newline(txt2))/2+1,drawy-14,string_hash_to_newline(string(txt2)))
	draw_set_color(c_silver)
	draw_text(drawx+string_width(string_hash_to_newline(txt2))/2,drawy-14,string_hash_to_newline(string(txt2)))
	draw_set_color(c_white)

	if mouseover = -1
	draw_text(drawx+string_width(string_hash_to_newline(txt2))/2,drawy-14-string_height(string_hash_to_newline(txt2))+string_height(string_hash_to_newline(race_name[race])),string_hash_to_newline(string(race_name[race])))
	else if UberCont.race_have[mouseover] = 1
	draw_text(drawx+string_width(string_hash_to_newline(txt2))/2,drawy-14-string_height(string_hash_to_newline(txt2))+string_height(string_hash_to_newline(race_name[mouseover])),string_hash_to_newline(string(race_name[mouseover])))
	else
	draw_text(drawx+string_width(string_hash_to_newline(txt2))/2,drawy-14-string_height(string_hash_to_newline(txt2))+string_height(string_hash_to_newline(race_name[mouseover])),string_hash_to_newline("[LOCKED]"))

	if showExplain and race != 0
	draw_sprite(sprExplain,race,drawx+string_width(string_hash_to_newline(txt2))/2-92,drawy-17-string_height(string_hash_to_newline(txt2)))

	img += 0.1

	if mouseover = -1
	draw_sprite(sprRMBIcon,-1,drawx+string_width(string_hash_to_newline(txt2))/2-string_width(string_hash_to_newline(race_acti[race]))-8,drawy-22)
	else if UberCont.race_have[mouseover] = 1
	draw_sprite(sprRMBIcon,-1,drawx+string_width(string_hash_to_newline(txt2))/2-string_width(string_hash_to_newline(race_acti[mouseover]))-8,drawy-22)


}
