///scrDrawHelp();
// /@description
///@param
function scrDrawHelp(txt){
	if UberCont.opt_hud_des == 0
		return "";
	txt = string_replace_all(txt,"#"," ");
	var w = 206;
	var s = string_height("A");
	draw_set_halign(fa_left)
	draw_set_valign(fa_top)
	var xx = /*__view_get( e__VW.XView, 0 )+*/110;
	var yy = /*__view_get( e__VW.YView, 0 )+*/22;
	draw_set_colour(c_black);
	if !instance_exists(LevCont)
	draw_set_alpha(0.6);
	draw_rectangle(xx-2,yy-2,xx+string_width_ext(txt,s,w)+2,yy+string_height_ext(txt,s,w)+2,false);
	draw_set_alpha(1);
	draw_set_colour(c_black);
	draw_text_ext(xx+1,yy+1,txt,s,w);
	draw_set_colour(c_white);
	draw_text_ext(xx,yy,txt,s,w);
}