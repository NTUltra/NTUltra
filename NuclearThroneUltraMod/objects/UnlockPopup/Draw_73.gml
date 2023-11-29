if drawtext
{
var xx = x - 1//-(string_width(string_hash_to_newline(mytext))*0.5);
var yy = y - 2//-(string_height(string_hash_to_newline(mytext))*0.5)
draw_set_halign(fa_right)
draw_set_valign(fa_bottom)
if instance_exists(LevCont)
yy -= 40;
draw_set_colour(c_black);
draw_text(xx,yy+1,string_hash_to_newline(mytext));
draw_text(xx,yy-1,string_hash_to_newline(mytext));
draw_text(xx+1,yy+1,string_hash_to_newline(mytext));
draw_text(xx-1,yy-1,string_hash_to_newline(mytext));
draw_text(xx+1,yy,string_hash_to_newline(mytext));
draw_text(xx-1,yy,string_hash_to_newline(mytext));


draw_set_colour(c_white);
draw_text(xx,yy,string_hash_to_newline(mytext));

draw_set_halign(fa_center)
}

