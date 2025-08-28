///scrDrawTextColoursExt();
// /@description
///@param xx, yy, text, sep, width
function scrDrawTextColoursExt(xx,yy,txt,s,w){
	var normalTxt = scrReplaceAllColourCodes(txt);
	draw_text_ext(xx,yy,string_hash_to_newline(normalTxt),s,w);
	if (string_replace_all(txt,"<r>","") != txt)
		draw_text_ext_colour(xx,yy,scrFilterText(txt,"<r>"),s,w,c_red,c_red,c_red,c_red,1);
	if (string_replace_all(txt,"<g>","") != txt)
		draw_text_ext_colour(xx,yy,scrFilterText(txt,"<g>"),s,w,c_lime,c_lime,c_lime,c_lime,1);
	if (string_replace_all(txt,"<y>","") != txt)
	{
		var ammoColour = make_colour_rgb(229,140,0);
		draw_text_ext_colour(xx,yy,scrFilterText(txt,"<y>"),s,w,ammoColour,ammoColour,ammoColour,ammoColour,1);
	}
	if (string_replace_all(txt,"<gb>","") != txt)
	{
	var armourColour = make_colour_rgb(145,152,189);
	draw_text_ext_colour(xx,yy,scrFilterText(txt,"<gb>"),s,w,armourColour,armourColour,armourColour,armourColour,1);
	}
	if (string_replace_all(txt,"<aq>","") != txt)
		draw_text_ext_colour(xx,yy,scrFilterText(txt,"<aq>"),s,w,c_aqua,c_aqua,c_aqua,c_aqua,1);
	if (string_replace_all(txt,"<w>","") != txt)
		draw_text_ext_colour(xx,yy,scrFilterText(txt,"<w>"),s,w,c_white,c_white,c_white,c_white,1);
	if (string_replace_all(txt,"<gr>","") != txt)
		draw_text_ext_colour(xx,yy,scrFilterText(txt,"<gr>"),s,w,c_dkgray,c_dkgray,c_dkgray,c_dkgray,1);
	if (string_replace_all(txt,"<p>","") != txt)
		draw_text_ext_colour(xx,yy,scrFilterText(txt,"<p>"),s,w,c_purple,c_purple,c_purple,c_purple,1);
	if (string_replace_all(txt,"<pi>","") != txt)
		draw_text_ext_colour(xx,yy,scrFilterText(txt,"<pi>"),s,w,c_fuchsia,c_fuchsia,c_fuchsia,c_fuchsia,1);
	if (string_replace_all(txt,"<b>","") != txt)
	{
		var rogueBlue = make_colour_rgb(22,97,223);
		draw_text_ext_colour(xx,yy,scrFilterText(txt,"<b>"),s,w,rogueBlue,rogueBlue,rogueBlue,rogueBlue,1);
	}
	if (string_replace_all(txt,"<v>","") != txt)
	{
		var voidColour = make_colour_rgb(89,147,178);
		draw_text_ext_colour(xx,yy,scrFilterText(txt,"<v>"),s,w,voidColour,voidColour,voidColour,voidColour,1);
	}
	if (string_replace_all(txt,"<rp>","") != txt)
	{
		var rabbitColour = make_colour_rgb(250,186,255);
		draw_text_ext_colour(xx,yy,scrFilterText(txt,"<rp>"),s,w,rabbitColour,rabbitColour,rabbitColour,rabbitColour,1);
	}
}