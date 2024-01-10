draw_sprite(sprite_index,/*UberCont.opt_gamemode*/1,x,y)
draw_text(x - 6,y + 16,
UberCont.race_name[UberCont.opt_gm_char_active]);
if (UberCont.opt_gm_char_active != 0)
{
	draw_set_halign(fa_center);
	draw_set_valign(fa_top);
	var rawStr = UberCont.race_acti[UberCont.opt_gm_char_active];
	var shapeStr = string_hash_to_newline(scrReplaceAllColourCodes(rawStr));
	var w = (string_width(shapeStr) * 0.5) + 1;
	var h = (string_height(shapeStr)) + 1;
	var xx = x + 8;
	var yy = y + 24;
	draw_rectangle_color(xx-w,yy-1,xx+w,yy+h,c_black,c_black,c_black,c_black,false);
	draw_set_color(make_colour_rgb(160,160,160))
	scrDrawTextColours(xx,yy,
	rawStr);
	draw_set_color(c_white)
	draw_set_halign(fa_left);
}