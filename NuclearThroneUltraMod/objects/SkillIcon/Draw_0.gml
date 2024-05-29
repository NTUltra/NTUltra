var yy = y + lerp(64,0,clamp(time,0,1));
draw_set_colour(c_black);
draw_rectangle(x - 14, yy - 18, x + 14, yy + 18,false);
draw_set_color(c_dkgray)
//draw_rectangle(x-12,y-16,x+12,y+16,0)
var candrawoutline = skill < array_length(UberCont.ctot_skill_taken)-1
if selected
{
	draw_sprite(sprSkillSelected,-1,x,yy)
	draw_sprite(sprite_index,skill,x+2,yy-2)
	if candrawoutline && UberCont.ctot_skill_taken[skill] > 0 && !UberCont.gamemode_have[28]
	{
		var col = make_color_rgb(72,156,8);
		draw_rectangle_color(x-12,y-17,x+12,y+15,col,col,col,col,true);	
	}

}
else
{
	draw_sprite(sprite_index,skill,x,yy)
	draw_sprite_ext(sprite_index,skill,x,yy,1,1,0,c_black,0.05)
	/*
	if candrawoutline && UberCont.ctot_skill_taken[skill] > 0
	{
		var col = make_color_rgb(72,156,8);
		draw_rectangle_color(x-12,y-16,x+11,y+15,col,col,col,col,true);	
	}
	*/
}

draw_set_valign(fa_bottom)
draw_set_halign(fa_right)
if instance_exists(Player) && Player.ultra_got[19] && Player.altUltra
{
	txt2 = "KILL KILL KILL";
	skill_bons[skill] = "KILL KILL KILL";
	skill_name[skill] = "KILL KILL KILL";
	skill_text[skill] = "KILL KILL KILL";
}
if showDetail
	txt2 = string(skill_name[skill])+"#"+string(skill_detail[skill])
else	
	txt2 = string(skill_name[skill])+"#"+string(skill_text[skill])
var fulltxt = txt2;
txt2 = scrReplaceAllColourCodes(txt2);

if selected
{

drawx = x
drawy = __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-34//48
if instance_exists(Player) && Player.race == 25 && skill_bons[skill] != ""
	drawy -= string_height(string_hash_to_newline(skill_bons[skill]));

if drawx-string_width(string_hash_to_newline(txt2))/2-2 < __view_get( e__VW.XView, 0 )+2
drawx = __view_get( e__VW.XView, 0 )+4+string_width(string_hash_to_newline(txt2))/2

if drawx+string_width(string_hash_to_newline(txt2))/2+2> __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )-2
drawx = __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )-4-string_width(string_hash_to_newline(txt2))/2

draw_set_color(c_black)
//draw_set_alpha(0.7)
//draw_rectangle(
//drawx-string_width(string_hash_to_newline(txt2))/2-2,
//drawy-17-string_height(string_hash_to_newline(txt2)),
//drawx+string_width(string_hash_to_newline(txt2))/2+2,
//drawy-12,0)
var splitted = string_split(txt2,"#");
var al = array_length(splitted);
var lineHeight = string_height("kaas");
var tyy = drawy - string_height(string_hash_to_newline(txt2)) - (lineHeight * 2);
var txx = drawx+string_width(string_hash_to_newline(txt2))/2
for (var i = 0; i < al; i++)
{
	if splitted[i] != ""
	{
		var t = 1;
		if i == 0
			t = 0;
		var tyyy = tyy + lineHeight*i;
		draw_rectangle(
		txx,
		tyyy + t,
		txx - string_width(splitted[i]) - 2,
		tyyy + lineHeight + 2, false)
	}
}
draw_set_alpha(1)


// draw_sprite_ext(sprMenuPointer,0,x,drawy-12,1,1,0,c_white,0.8)

//draw_text(drawx+string_width(string_hash_to_newline(txt2))/2,drawy-13,string_hash_to_newline(string(txt2)))
//draw_text(drawx+string_width(string_hash_to_newline(txt2))/2+1,drawy-13,string_hash_to_newline(string(txt2)))
//draw_text(drawx+string_width(string_hash_to_newline(txt2))/2+1,drawy-14,string_hash_to_newline(string(txt2)))
draw_set_color(make_colour_rgb(160,160,160));
scrDrawTextColours(drawx+string_width(string_hash_to_newline(txt2))/2,drawy-14,string(fulltxt))
draw_set_color(c_white)
draw_text(drawx+string_width(string_hash_to_newline(txt2))/2,drawy-14-string_height(string_hash_to_newline(txt2))+string_height(string_hash_to_newline(skill_name[skill])),string_hash_to_newline(string(skill_name[skill])))

if instance_exists(Player) && Player.race == 25 && skill_bons[skill] != ""
{
	var bonusTxt = string_hash_to_newline(skill_bons[skill]);
	drawy += string_height(bonusTxt);
	draw_set_color(c_black)
	//draw_set_alpha(0.8)
	//draw_rectangle(drawx-string_width(string_hash_to_newline(txt2))/2-2,drawy-14-string_height(bonusTxt),drawx+string_width(string_hash_to_newline(txt2))/2+2,drawy-10,0)
	var splitted = string_split(skill_bons[skill],"#");
	var al = array_length(splitted);
	var lineHeight = string_height("kaas");
	var tyy = drawy - 16 - (lineHeight * al)
	var txx = drawx+string_width(string_hash_to_newline(txt2))/2
	for (var i = 0; i < al; i++)
	{
		if splitted[i] != ""
		{
			var ht = 2;
			if i == 0
			{
				ht = 16;
			}
			var tyyy = tyy + lineHeight*i;
			draw_rectangle(
			txx,
			tyyy + 1,
			txx - string_width(splitted[i]) - ht,
			tyyy + lineHeight + 2, false)
		}
	}
	draw_set_alpha(1)
	draw_text(drawx+string_width(string_hash_to_newline(txt2))/2,drawy-13,"["+bonusTxt+"]")
	draw_text(drawx+string_width(string_hash_to_newline(txt2))/2+1,drawy-13,"["+bonusTxt+"]")
	draw_text(drawx+string_width(string_hash_to_newline(txt2))/2+1,drawy-14,"["+bonusTxt+"]")
	draw_set_color(c_lime)
	draw_text(drawx+string_width(string_hash_to_newline(txt2))/2,drawy-14,"["+bonusTxt+"]")
}
}
//draw_text(x,y-32,string(skill)); // just to show the skillnumber
if hover && !(instance_exists(Player) && Player.ultra_got[19] && Player.altUltra)
{
	draw_set_color(c_white)
	draw_set_halign(fa_left)
	draw_set_valign(fa_bottom)
	var xx = camera_get_view_x(view_camera[0]) + 8;
	var yy = camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]);
	if alarm[2] > 0
		draw_sprite(sprRMBIcon,1,xx,yy - 8);
	else
		draw_sprite(sprRMBIcon,0,xx,yy - 8);
	
	if showDetail
		draw_text_colour(xx + 8,yy,"RMB TO HIDE DETAILS",c_gray,c_gray,c_gray,c_gray,1);
	else
		draw_text_colour(xx + 8,yy,"RMB TO SHOW DETAILS",c_gray,c_gray,c_gray,c_gray,1);
}