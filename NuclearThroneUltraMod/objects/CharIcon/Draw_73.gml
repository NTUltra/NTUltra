draw_set_color(c_dkgray)
//draw_rectangle(x-12,y-16,x+12,y+16,0)
var hover = false;
if UberCont.mouse__x > x and UberCont.mouse__x < x+16 and UberCont.mouse__y > y and UberCont.mouse__y < y+24
{
	hover = true;
	draw_sprite(sprSelected,-1,x,y)
	draw_sprite(sprite_index,char,x+2,y-2)
}
else
{
	draw_sprite(sprite_index,char,x,y)
	draw_sprite_ext(sprite_index,char,x,y,1,1,0,c_black,0.05)
}

draw_set_valign(fa_bottom)
draw_set_halign(fa_right)

txt2 = race_name[char]+"#"+race_acti[char]+"#"+race_pass[char];
if hover
{

drawx = x
drawy = __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-60

if drawx-string_width(string_hash_to_newline(txt2))/2-2 < __view_get( e__VW.XView, 0 )+2
drawx = __view_get( e__VW.XView, 0 )+4+string_width(string_hash_to_newline(txt2))/2

if drawx+string_width(string_hash_to_newline(txt2))/2+2> __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )-2
drawx = __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )-4-string_width(string_hash_to_newline(txt2))/2

draw_set_color(c_black)
draw_set_alpha(0.8)
draw_rectangle(drawx-string_width(string_hash_to_newline(txt2))/2-2,drawy-17-string_height(string_hash_to_newline(txt2)),drawx+string_width(string_hash_to_newline(txt2))/2+2,drawy-12,0)
draw_set_alpha(1)


draw_sprite_ext(sprMenuPointer,0,x,drawy-12,1,1,0,c_white,0.8)

draw_text(drawx+string_width(string_hash_to_newline(txt2))/2,drawy-13,string_hash_to_newline(string(txt2)))
draw_text(drawx+string_width(string_hash_to_newline(txt2))/2+1,drawy-13,string_hash_to_newline(string(txt2)))
draw_text(drawx+string_width(string_hash_to_newline(txt2))/2+1,drawy-14,string_hash_to_newline(string(txt2)))
draw_set_color(c_silver)
draw_text(drawx+string_width(string_hash_to_newline(txt2))/2,drawy-14,string_hash_to_newline(string(txt2)))
draw_set_color(c_white)
draw_text(drawx+string_width(string_hash_to_newline(txt2))/2,drawy-14-string_height(string_hash_to_newline(txt2))+string_height(string_hash_to_newline(race_name[char])),string_hash_to_newline(string(race_name[char])))
}
//draw_text(x,y-32,string(char)); // just to show the skillnumber