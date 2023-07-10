draw_set_color(c_dkgray)
//draw_rectangle(x-12,y-16,x+12,y+16,0)
var hover = (UberCont.mouse__x > x-10 and UberCont.mouse__x < x+10 and UberCont.mouse__y > y-16 and UberCont.mouse__y < y+16)
if hover
{
draw_sprite(sprSkillSelected,-1,x,y)
draw_sprite(sprite_index,crown,x+2,y-2)
}
else
{
	draw_sprite(sprite_index,crown,x,y)
	draw_sprite_ext(sprite_index,crown,x,y,1,1,0,c_black,0.05)
}
var isCurrentCrown = false;
if (crown != 1 && scrIsCrown(crown))
{
	isCurrentCrown = true;
	var col = make_color_rgb(72,156,8);
	draw_rectangle_color(x-12,y-16 - (hover*2),x+12+hover,y+15,col,col,col,col,true);	
}
draw_set_font(fntM)
draw_set_valign(fa_bottom)
draw_set_halign(fa_right)
txt2 = "";
var preTxt = "";
if (UberCont.canMultiCrown)
{
	preTxt = "\n";
	txt2 = "ADD#";
	if isCurrentCrown
		txt2 = "REMOVE#";
	else if canReAdd
		txt2 = "RE-ADD#";
}
txt2 += string(crown_name[crown])+"#"+string(crown_text[crown])
if hover
{

	drawx = x
	drawy = __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-58//48

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

	if UberCont.crown_used[crown] > 0
	{
		var col = make_color_rgb(72,156,8);
		draw_set_color(col)
		draw_text(drawx+string_width(string_hash_to_newline(txt2))/2-1,drawy-15-string_height(string_hash_to_newline(txt2))+string_height(preTxt+string_hash_to_newline(crown_name[crown])),string_hash_to_newline(string(crown_name[crown])))
		draw_text(drawx+string_width(string_hash_to_newline(txt2))/2-1,drawy-13-string_height(string_hash_to_newline(txt2))+string_height(preTxt+string_hash_to_newline(crown_name[crown])),string_hash_to_newline(string(crown_name[crown])))
		draw_text(drawx+string_width(string_hash_to_newline(txt2))/2+1,drawy-13-string_height(string_hash_to_newline(txt2))+string_height(preTxt+string_hash_to_newline(crown_name[crown])),string_hash_to_newline(string(crown_name[crown])))
		draw_text(drawx+string_width(string_hash_to_newline(txt2))/2+1,drawy-15-string_height(string_hash_to_newline(txt2))+string_height(preTxt+string_hash_to_newline(crown_name[crown])),string_hash_to_newline(string(crown_name[crown])))
	}
	draw_set_color(c_white)
	draw_text(drawx+string_width(string_hash_to_newline(txt2))/2,drawy-14-string_height(string_hash_to_newline(txt2))+string_height(preTxt+string_hash_to_newline(crown_name[crown])),string_hash_to_newline(string(crown_name[crown])))



}
