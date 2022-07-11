scrDrawSpiral()
scrDrawHUD()

draw_set_font(fntM)
draw_set_halign(fa_center)
draw_set_valign(fa_middle)

text=" #";
var area = 0;
var subarea = 0;
var loops = 0;
var txt = "";
if instance_exists(Player)
{

if Player.kills>0 && kutgrap2==true
text = "MURDERS: "+string(Player.kills)+"#";
else if Player.kills>0
text = "KILLS: "+string(Player.kills)+"#";
else
text=" #";

text="DIFFICULTY: "+string(Player.hard)+"#"+text;


area = Player.area;
subarea = Player.subarea
loops = Player.loops;


var res = scrAreaName(area,subarea,loops);
var txt = res[0];
var upsideDown = res[1];


}
draw_set_color(c_black)
if kutgrap
{
var theText = string_hash_to_newline(string(text)+"#OBLITERATING... "+string(round((instance_number(Floor)/goal)*100))+"%##"+string_upper(tip));
draw_text(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2+1,theText)
draw_text(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+1,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2+1,theText)
draw_text(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+1,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2,theText)
draw_set_color(c_white)
draw_text(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2,theText)
draw_set_color(c_gray)

}
else
{
var theText = string_hash_to_newline(string(text)+"#GENERATING... "+string(round((instance_number(Floor)/goal)*100))+"%##"+string_upper(tip));
draw_text(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2+1,theText)
draw_text(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+1,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2+1,theText)
draw_text(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+1,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2,theText)
draw_set_color(c_white)
draw_text(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2,theText)
draw_set_color(c_gray)

if instance_exists(Player) && Player.race=14&&Player.ultra_got[56]=0
{

draw_text(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/1.4,string_hash_to_newline("PRIMARY: "+string(Player.wep_name[Player.wep])) );

//draw_text(view_xview+view_wview/2,view_yview+view_hview/1.3,"SECONDARY: "+string(Player.wep_name[Player.bwep]) );

}

}
//Area text
var xx = __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )*0.5
var yy = (__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )*0.5)-9// + (string_height(text)*0.5);
yy -= string_height(string_hash_to_newline(theText))*0.5;
draw_set_valign(fa_top);
if upsideDown
{
	draw_set_color(c_black)
	draw_text_transformed(xx,yy+1,string_hash_to_newline(txt),-1,-1,0)
	draw_text_transformed(xx+1,yy+1,string_hash_to_newline(txt),-1,-1,0)
	draw_text_transformed(xx+1,yy,string_hash_to_newline(txt),-1,-1,0)
	draw_set_color(c_white)
	draw_text_transformed(xx,yy,string_hash_to_newline(txt),-1,-1,0)
	draw_set_color(c_gray)
}
else
{
	draw_set_color(c_black)
	draw_text(xx,yy+1,string_hash_to_newline(txt))
	draw_text(xx+1,yy+1,string_hash_to_newline(txt))
	draw_text(xx+1,yy,string_hash_to_newline(txt))
	draw_set_color(c_white)
	draw_text(xx,yy,string_hash_to_newline(txt))
	draw_set_color(c_gray)
}

draw_set_valign(fa_middle)
draw_text(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )*0.5,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )*0.5,string_hash_to_newline("#####"+string_upper(tip)))
draw_set_valign(fa_top)

