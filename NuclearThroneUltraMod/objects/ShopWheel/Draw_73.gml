/// @description Display rad percentage
var rads = 0;
with Player
{
	rads = floor((rad/GetPlayerMaxRad())*100);
}
var drawx = x;
var drawy = y-52;
if instance_exists(Player) && Player.ultra_got[78]
	drawy -= 18;
draw_set_color(c_dkgray)

draw_set_valign(fa_bottom)
draw_set_halign(fa_right)
var txt = "RADS: "+string(rads)+"%";
if drawx-string_width(string_hash_to_newline(txt))/2-2 < __view_get( e__VW.XView, 0 )+2
drawx = __view_get( e__VW.XView, 0 )+4+string_width(string_hash_to_newline(txt))/2

if drawx+string_width(string_hash_to_newline(txt))/2+2> __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )-2
drawx = __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )-4-string_width(string_hash_to_newline(txt))/2

draw_set_color(c_black)
draw_set_alpha(0.8)
draw_rectangle(drawx-string_width(string_hash_to_newline(txt))/2-2,drawy-17-string_height(string_hash_to_newline(txt)),drawx+string_width(string_hash_to_newline(txt))/2+2,drawy-12,0)
draw_set_alpha(1)

draw_text(drawx+string_width(string_hash_to_newline(txt))/2,drawy-13,string_hash_to_newline(string(txt)))
draw_text(drawx+string_width(string_hash_to_newline(txt))/2+1,drawy-13,string_hash_to_newline(string(txt)))
draw_text(drawx+string_width(string_hash_to_newline(txt))/2+1,drawy-14,string_hash_to_newline(string(txt)))
draw_set_color(c_silver)
draw_text(drawx+string_width(string_hash_to_newline(txt))/2,drawy-14,string_hash_to_newline(string(txt)))
draw_set_color(c_white)
draw_set_halign(fa_center)
draw_set_valign(fa_top)