draw_set_color(c_dkgray)
//draw_rectangle(x-12,y-16,x+12,y+16,0)
var yy = y - 16;
if UberCont.mouse__x > x-16 and UberCont.mouse__x < x+16 and UberCont.mouse__y > y-20 and UberCont.mouse__y < y+20
{
	draw_sprite(sprSelected,-1,x,yy)
	draw_sprite(sprite_index,0,x+2,yy-2)
}
else
{
	draw_sprite(sprite_index,0,x,yy)
	draw_sprite_ext(sprite_index,0,x,yy,1,1,0,c_black,0.05)
}

draw_set_font(fntM)
draw_set_valign(fa_bottom)
draw_set_halign(fa_right)

txt2 = string(skill_name[skill])+"#"+string(skill_text[skill])
if UberCont.mouse__x > x-16 and UberCont.mouse__x < x+16 and UberCont.mouse__y > y-20 and UberCont.mouse__y < y+20
{

drawx = x
drawy = __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-48

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
draw_text(drawx+string_width(string_hash_to_newline(txt2))/2,drawy-14-string_height(string_hash_to_newline(txt2))+string_height(string_hash_to_newline(skill_name[skill])),string_hash_to_newline(string(skill_name[skill])))
}
//draw_text(x,y-32,string(skill)); // just to show the skillnumber