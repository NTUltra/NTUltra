var yy = y + lerp(64,0,clamp(time,0,1));
draw_set_colour(c_black);
draw_rectangle(x - 14, yy - 18, x + 14, yy + 18,false);
draw_set_color(c_dkgray)
//draw_rectangle(x-12,y-16,x+12,y+16,0)
var candrawoutline = showNew && skill < array_length(UberCont.ctot_skill_taken)-1
if selected
{
	draw_sprite(sprSkillSelected,-1,x,yy)
	draw_sprite(sprite_index,skill,x+2,yy-2)
}
else
{
	draw_sprite(sprite_index,skill,x,yy)
	draw_sprite_ext(sprite_index,skill,x,yy,1,1,0,c_black,0.05)
}

draw_set_valign(fa_bottom)
draw_set_halign(fa_right)
if instance_exists(Player) && Player.ultra_got[19] && Player.altUltra
{
	txt2 = "KILL KILL KILL";
	if skill >= 0
	{
		skill_bons[skill] = "KILL KILL KILL";
		skill_name[skill] = "KILL KILL KILL";
		skill_text[skill] = "KILL KILL KILL";
	}
}
if skill < 0
{
	txt2 = "";
}
else
{
	if showDetail
		txt2 = string(skill_name[skill])+"#"+string(skill_detail[skill])
	else	
		txt2 = string(skill_name[skill])+"#"+string(skill_text[skill])
}
var fulltxt = txt2;
txt2 = scrReplaceAllColourCodes(txt2);

if selected
{

drawy = __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-34//48
if instance_exists(Player) && (Player.race == 25  || scrPlantApexPredatorKillSkillBuff(skill)) && skill_bons[skill] != ""
	drawy -= string_height(string_hash_to_newline(skill_bons[skill]));

/*
if drawx-string_width(string_hash_to_newline(txt2))/2-2 < __view_get( e__VW.XView, 0 )+2
drawx = __view_get( e__VW.XView, 0 )+4+string_width(string_hash_to_newline(txt2))/2

if drawx+string_width(string_hash_to_newline(txt2))/2+2> __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )-2
drawx = __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )-4-string_width(string_hash_to_newline(txt2))/2
*/
drawx = camera_get_view_x(view_camera[0]) + (camera_get_view_width(view_camera[0]) * 0.5);
draw_set_halign(fa_center);
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
var tyy;
if skill >= 0
	tyy = drawy - string_height(string_hash_to_newline(txt2)) - (lineHeight * 2);
else
{
	tyy = drawy - string_height(string_hash_to_newline("REROLL NOTHING")) - (lineHeight * 2);
	splitted = ["REROLL NOTHING"]
	al = 1;
}
var txx = drawx
for (var i = 0; i < al; i++)
{
	if splitted[i] != ""
	{
		var t = 1;
		if i == 0
			t = 0;
		var tyyy = tyy + lineHeight*i;
		draw_rectangle(
		txx - (string_width(splitted[i])*0.5) - 2,
		tyyy + t,
		txx + (string_width(splitted[i])*0.5),
		tyyy + lineHeight + 2, false)
	}
}
draw_set_alpha(1)


draw_set_color(make_colour_rgb(160,160,160));
scrDrawTextColours(drawx,drawy-14,string(fulltxt))
draw_set_color(c_white)
if skill >= 0
	draw_text(drawx,drawy-14-string_height(string_hash_to_newline(txt2))+string_height(string_hash_to_newline(skill_name[skill])),string_hash_to_newline(string(skill_name[skill])))
else
	draw_text(drawx,drawy-7-string_height(string_hash_to_newline("REROLL NOTHING")),"REROLL NOTHING")

if instance_exists(Player) && skill >= 0 && skill_bons[skill] != "" && (Player.race == 25  || scrPlantApexPredatorKillSkillBuff(skill))
{
	var bonusTxt = string_hash_to_newline(skill_bons[skill]);
	drawy += string_height(bonusTxt);
	draw_set_color(c_black)
	var splitted = string_split(skill_bons[skill],"#");
	var al = array_length(splitted);
	var lineHeight = string_height("kaas");
	var tyy = drawy - 16 - (lineHeight * al)
	var txx = drawx
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
			txx - (string_width(splitted[i])*0.5) - ht*0.5,
			tyyy + 1,
			txx + (string_width(splitted[i])*0.5) + ht*0.5,
			tyyy + lineHeight + 2, false)
		}
	}
	draw_set_alpha(1)
	draw_text(drawx,drawy-13,"["+bonusTxt+"]")
	draw_text(drawx+1,drawy-13,"["+bonusTxt+"]")
	draw_text(drawx+1,drawy-14,"["+bonusTxt+"]")
	draw_set_color(c_lime)
	draw_text(drawx,drawy-14,"["+bonusTxt+"]")
}
}
draw_set_halign(fa_left);
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
if candrawoutline && skill < array_length(UberCont.ctot_skill_taken) && skill >= 0 && UberCont.ctot_skill_taken[skill] == 0 && showNew
{
	var col = c_white;
	if showTimer < 8
	{
		col = c_silver;
		if showTimer < 5
			col = c_gray;
	}
	if showTimer > 5 || showTimer % 2 == 0
		draw_sprite_ext(sprNew,0,x - 12, y - 14,1,1,0,col,1);
	if selected
	{
		if alarm[5] < 1
			alarm[5] = 45;
		if showTimer > 5 || showTimer % 2 == 1
			scrDrawTextBackgrounded(x - 12 - 32,y + 28,"NEVER TAKEN!",col);
	}
}