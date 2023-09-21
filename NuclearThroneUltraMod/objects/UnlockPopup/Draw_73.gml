if drawtext
{
var xx = x - 1//-(string_width(string_hash_to_newline(mytext))*0.5);
var yy = y - 2//-(string_height(string_hash_to_newline(mytext))*0.5)
draw_set_halign(fa_right)
draw_set_valign(fa_bottom)

draw_set_colour(c_black);
if instance_exists(LevCont)
draw_text(xx,yy-39,string_hash_to_newline(mytext));
else
draw_text(xx,yy,string_hash_to_newline(mytext));

draw_set_colour(c_white);
if instance_exists(LevCont)
draw_text(xx,yy-40,string_hash_to_newline(mytext));
else
draw_text(xx,yy-1,string_hash_to_newline(mytext));

draw_set_halign(fa_center)
}

