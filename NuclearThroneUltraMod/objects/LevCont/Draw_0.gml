//draw_background(bakMut,view_xview,view_yview)
if !instance_exists(Player)
	exit;
scrDrawSpiral()

draw_set_halign(fa_center)
draw_set_valign(fa_bottom)
var splatY = 9;
draw_set_colour(c_black);
draw_rectangle(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ),__view_get( e__VW.YView, 0 )+48,0)
var bottom = 10;
if Player.crownpoints > 0
{
	splatY = 32;
	bottom = 67;
//Higher border

}
draw_rectangle(__view_get( e__VW.XView, 0 ),
__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 ),
__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ),
__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-bottom,
false);
draw_set_colour(c_white);
if Player.crownpoints = 0
{
	

	var xx = __view_get( e__VW.XView, 0 )+(__view_get( e__VW.WView, 0 )*0.5);
	var yy = __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-splatY;
	draw_sprite(sprMutationSplat,image_index,xx,yy);
	if Player.refundPoints > 0
	{
		var tt = "RE-COLLECT YOUR";
		draw_set_font(fntB);
		var tyy = __view_get( e__VW.YView, 0 )+47
		/*
		draw_text_colour(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )*0.5 + 1,tyy,tt,c_black,c_black,c_black,c_black,1);
		draw_text_colour(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )*0.5 + 1,tyy + 1,tt,c_black,c_black,c_black,c_black,1);
		draw_text_colour(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )*0.5,tyy + 1,tt,c_black,c_black,c_black,c_black,1);
		*/
		//draw_text(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )*0.5,tyy,tt);
		draw_text_colour(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )*0.5,tyy,tt,c_white,c_white,c_white,c_white,1);
		tt = "MUTATION!";
		tyy = __view_get( e__VW.YView, 0 )+76
		draw_text_colour(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )*0.5 + 1,tyy,tt,c_black,c_black,c_black,c_black,1);
		draw_text_colour(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )*0.5 + 1,tyy + 1,tt,c_black,c_black,c_black,c_black,1);
		draw_text_colour(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )*0.5,tyy + 1,tt,c_black,c_black,c_black,c_black,1);
		//draw_text(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )*0.5,tyy,tt);
		draw_text_colour(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )*0.5,tyy,tt,c_lime,c_lime,c_lime,c_lime,1);
		draw_set_font(fntM);
	}
	else if Player.getVision
	{
		var tt = "COLLECT YOUR";
		draw_set_font(fntB);
		var tyy = __view_get( e__VW.YView, 0 )+47
		/*
		draw_text_colour(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )*0.5 + 1,tyy,tt,c_black,c_black,c_black,c_black,1);
		draw_text_colour(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )*0.5 + 1,tyy + 1,tt,c_black,c_black,c_black,c_black,1);
		draw_text_colour(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )*0.5,tyy + 1,tt,c_black,c_black,c_black,c_black,1);
		*/
		//draw_text(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )*0.5,tyy,tt);
		draw_text_colour(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )*0.5,tyy,tt,c_white,c_white,c_white,c_white,1);
		tt = "REWARD!";
		tyy = __view_get( e__VW.YView, 0 )+76
		draw_text_colour(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )*0.5 + 1,tyy,tt,c_black,c_black,c_black,c_black,1);
		draw_text_colour(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )*0.5 + 1,tyy + 1,tt,c_black,c_black,c_black,c_black,1);
		draw_text_colour(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )*0.5,tyy + 1,tt,c_black,c_black,c_black,c_black,1);
		//draw_text(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )*0.5,tyy,tt);
		draw_text_colour(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )*0.5,tyy,tt,c_lime,c_lime,c_lime,c_lime,1);
		draw_set_font(fntM);
	}
	else
	{
		var txt;
		if Player.skillpoints = 1
		txt = " MUTATION"
		else
		txt = " MUTATIONS"
		txt2 = "SELECT "
		if Player.race = 8 || Player.race == 11{
		if Player.skillpoints = 1
		txt = " UPDATE"
		else
		txt = " UPDATES"
		txt2 = "INSTALL "}
		draw_set_color(c_black)
		draw_text(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.YView, 0 )+47,string_hash_to_newline("#"+string(txt2)+string(Player.skillpoints)+string(txt)))
		draw_text(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+1,__view_get( e__VW.YView, 0 )+47,string_hash_to_newline("#"+string(txt2)+string(Player.skillpoints)+string(txt)))
		draw_text(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+1,__view_get( e__VW.YView, 0 )+46,string_hash_to_newline("#"+string(txt2)+string(Player.skillpoints)+string(txt)))
		draw_set_color(c_white)
		draw_text(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.YView, 0 )+46,string_hash_to_newline("#"+string(txt2)+string(Player.skillpoints)+string(txt)))
		draw_sprite(sprLevelUpText,2,__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.YView, 0 )+40);
	}
}
else
{
draw_set_color(c_black)
draw_text(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.YView, 0 )+47,string_hash_to_newline("VAULT COMPLETED!#PICK YOUR CROWN"))
draw_text(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+1,__view_get( e__VW.YView, 0 )+47,string_hash_to_newline("VAULT COMPLETED!#PICK YOUR CROWN"))
draw_text(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+1,__view_get( e__VW.YView, 0 )+46,string_hash_to_newline("VAULT COMPLETED!#PICK YOUR CROWN"))
draw_set_color(c_white)
draw_text(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.YView, 0 )+46,string_hash_to_newline("VAULT COMPLETED!#PICK YOUR CROWN"))
}