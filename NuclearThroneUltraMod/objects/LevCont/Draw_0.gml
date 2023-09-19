//draw_background(bakMut,view_xview,view_yview)
scrDrawSpiral()

draw_set_halign(fa_center)
draw_set_valign(fa_bottom)
//Higher border
draw_set_colour(c_black);
draw_rectangle(__view_get( e__VW.XView, 0 ),
__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 ),
__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ),
__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-67,
false);
draw_set_colour(c_white);
if Player.crownpoints = 0
{
var txt;
if Player.skillpoints = 1
txt = " MUTATION"
else
txt = " MUTATIONS"
txt2 = "SELECT "
if Player.race = 8{
if Player.skillpoints = 1
txt = " UPDATE"
else
txt = " UPDATES"
txt2 = "INSTALL "}

var xx = __view_get( e__VW.XView, 0 )+(__view_get( e__VW.WView, 0 )*0.5);
var yy = __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-46;
draw_sprite(sprMutationSplat,image_index,xx,yy);

draw_set_color(c_black)
draw_text(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.YView, 0 )+47,string_hash_to_newline("LEVEL UP!#"+string(txt2)+string(Player.skillpoints)+string(txt)))
draw_text(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+1,__view_get( e__VW.YView, 0 )+47,string_hash_to_newline("LEVEL UP!#"+string(txt2)+string(Player.skillpoints)+string(txt)))
draw_text(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+1,__view_get( e__VW.YView, 0 )+46,string_hash_to_newline("LEVEL UP!#"+string(txt2)+string(Player.skillpoints)+string(txt)))
draw_set_color(c_white)
draw_text(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.YView, 0 )+46,string_hash_to_newline("LEVEL UP!#"+string(txt2)+string(Player.skillpoints)+string(txt)))
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

