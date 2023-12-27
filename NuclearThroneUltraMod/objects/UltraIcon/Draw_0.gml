draw_set_color(c_dkgray)
//draw_rectangle(x-12,y-16,x+12,y+16,0)

if selected
{
draw_sprite(sprSkillSelected,-1,x,y)
draw_sprite(sprite_index,skill,x+2,y-2)
}
else
{
draw_sprite(sprite_index,skill,x,y)
draw_sprite_ext(sprite_index,skill,x,y,1,1,0,c_black,0.05)
}

draw_set_valign(fa_bottom)
draw_set_halign(fa_right)

txt2 = string(ultra_name[skill])+"#"+string(ultra_text[skill])
var fulltxt = txt2;
txt2 = scrReplaceAllColourCodes(txt2);
if selected
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
/*
draw_text(drawx+string_width(string_hash_to_newline(txt2))/2,drawy-13,string_hash_to_newline(string(txt2)))
draw_text(drawx+string_width(string_hash_to_newline(txt2))/2+1,drawy-13,string_hash_to_newline(string(txt2)))
draw_text(drawx+string_width(string_hash_to_newline(txt2))/2+1,drawy-14,string_hash_to_newline(string(txt2)))*/
draw_set_color(make_colour_rgb(160,160,160));
scrDrawTextColours(drawx+string_width(string_hash_to_newline(txt2))/2,drawy-14,string(fulltxt))
if sprite_index == sprUltraIcon
	draw_set_color(c_white);
else
	draw_set_color(c_lime);
draw_text(drawx+string_width(string_hash_to_newline(txt2))/2,drawy-14-string_height(string_hash_to_newline(txt2))+string_height(string_hash_to_newline(ultra_name[skill])),string_hash_to_newline(string(ultra_name[skill])))
draw_set_color(c_white);
}

//draw_text(x,y-32,string(skill));

