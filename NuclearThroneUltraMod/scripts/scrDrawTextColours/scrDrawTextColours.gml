///scrDrawTextColours();
// /@description
///@param xx, yy, text
function scrDrawTextColours(xx,yy,txt){
	var normalTxt = scrReplaceAllColourCodes(txt);
	draw_text(xx,yy,string_hash_to_newline(normalTxt));
	if (string_replace_all(txt,"<r>","") != txt)
		draw_text_colour(xx,yy,scrFilterText(txt,"<r>"),c_red,c_red,c_red,c_red,1);
	if (string_replace_all(txt,"<g>","") != txt)
		draw_text_colour(xx,yy,scrFilterText(txt,"<g>"),c_lime,c_lime,c_lime,c_lime,1);
	if (string_replace_all(txt,"<y>","") != txt)
	{
		var ammoColour = make_colour_rgb(229,140,0);
		draw_text_colour(xx,yy,scrFilterText(txt,"<y>"),ammoColour,ammoColour,ammoColour,ammoColour,1);
	}
	if (string_replace_all(txt,"<gb>","") != txt)
	{
	var armourColour = make_colour_rgb(145,152,189);
	draw_text_colour(xx,yy,scrFilterText(txt,"<gb>"),armourColour,armourColour,armourColour,armourColour,1);
	}
	if (string_replace_all(txt,"<aq>","") != txt)
		draw_text_colour(xx,yy,scrFilterText(txt,"<aq>"),c_aqua,c_aqua,c_aqua,c_aqua,1);
	if (string_replace_all(txt,"<w>","") != txt)
		draw_text_colour(xx,yy,scrFilterText(txt,"<w>"),c_white,c_white,c_white,c_white,1);
	if (string_replace_all(txt,"<gr>","") != txt)
		draw_text_colour(xx,yy,scrFilterText(txt,"<gr>"),c_dkgray,c_dkgray,c_dkgray,c_dkgray,1);
	if (string_replace_all(txt,"<p>","") != txt)
		draw_text_colour(xx,yy,scrFilterText(txt,"<p>"),c_purple,c_purple,c_purple,c_purple,1);
	if (string_replace_all(txt,"<pi>","") != txt)
		draw_text_colour(xx,yy,scrFilterText(txt,"<pi>"),c_fuchsia,c_fuchsia,c_fuchsia,c_fuchsia,1);
	if (string_replace_all(txt,"<b>","") != txt)
	{
		var rogueBlue = make_colour_rgb(22,97,223);
		draw_text_colour(xx,yy,scrFilterText(txt,"<b>"),rogueBlue,rogueBlue,rogueBlue,rogueBlue,1);
	}
	if (string_replace_all(txt,"<v>","") != txt)
	{
		var voidColour = make_colour_rgb(89,147,178);
		draw_text_colour(xx,yy,scrFilterText(txt,"<v>"),voidColour,voidColour,voidColour,voidColour,1);
	}
	if (string_replace_all(txt,"<rp>","") != txt)
	{
		var rabbitColour = make_colour_rgb(250,186,255);
		draw_text_colour(xx,yy,scrFilterText(txt,"<rp>"),rabbitColour,rabbitColour,rabbitColour,rabbitColour,1);
	}
}