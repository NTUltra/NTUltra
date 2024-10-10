/// @description Draw menu
var margin = 4;
var sideMargin = 4;
var width = 128;
var height = 128;
var wantText = "";
var ystep = 36;
var perWidth = 4
draw_set_alpha(1);
if UberCont.opt_sideart != sprite_get_number(sprSideArt) + 1
{
	perWidth = 3;
	width -= 32;
	sideMargin = 2;
}
var crownHeight = 34;
var crownWidth = 26;
var t = camera_get_view_y(view_camera[0]);
var r = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]);
var l = r - width;
var b = t + camera_get_view_height(view_camera[0]) - 67;
var surfaceY = t + margin;
//draw_rectangle_colour(l,t,r,b,c_black,c_black,c_black,c_black,false);
draw_sprite_ext(sprite_index,image_index,l - 90,t + 48,1,1.05,0,c_white,1);
//draw_line_width_colour(l + sideMargin, b - 38 , r - (sideMargin*2), b - 38, 1,c_lime,c_lime);
var i = 0;
if !surface_exists(currentCrownsSurface)
{
	var al = totalCrowns - 1;
	scrollHeight = max(0,(ystep*(al/perWidth)) - height);
	currentCrownsSurface = surface_create(width,height);
}
if mouse_wheel_up()
{
	scroll = clamp(scroll - 16,0,scrollHeight)	
}
if mouse_wheel_down()
{
	scroll = clamp(scroll + 16,0,scrollHeight)
}
//var xx = l + sideMargin;
//var yy = t + margin + 48;
var xx = sideMargin;
var yy = margin - scroll;
//Yeet this on a surface and make it scrollable
surface_set_target(currentCrownsSurface);
draw_clear_alpha(c_black,1);
repeat(array_length(currentCrown))
{
	if currentCrown[i] != 1
	{
		var xo = 0;
		var yo = 0;
		if yy < height && alarm[0] < 1
		{
			if (mouse_x < l + xx + crownWidth &&
			mouse_x > l + xx  &&
			mouse_y > surfaceY + yy &&
			mouse_y < surfaceY + yy + crownHeight)
			{
				xo = 2;
				yo = -2;
				hoverSelected = true;
				if mouse_check_button_pressed(mb_left)
				{
					if scrIsCrown(Player.crown)
					{
						snd_play_2d(sndClickBack);
					}
					else
					{
						snd_play_2d(sndClick);
					}
					alarm[0] = 5;
					skipUpdate = true;
					with instance_create(x,y,CrownIcon)
					{
						canReAdd = true;
						crown = other.currentCrown[i];
						event_user(0);
						instance_destroy();
					}
					debug("crown now: ", currentCrown);
					continue;
				}
			}
		}
		if scrIsCrown(currentCrown[i])
			draw_sprite_ext(sprCrownSelect,currentCrown[i],xx + 13 + xo, yy + 19 + yo, 1,1,0,c_white,1);
		else
			draw_sprite_ext(sprCrownSelect,currentCrown[i],xx + 13 + xo, yy + 19 + yo, 1,1,0,c_white,0.5);
		xx += 29;
		if xx > width - 36
		{
			//xx = l + margin;
			xx = sideMargin;
			yy += ystep;
		}
	}
	i += 1;
}
surface_reset_target();
draw_surface(currentCrownsSurface,l,surfaceY)
var arrowSize = 12;
var arrowScale = 1;
if (mouse_x < r - sideMargin + arrowSize &&
mouse_x > r - 32 - sideMargin - arrowSize &&
mouse_y > b - 12 - margin - arrowSize &&
mouse_y < b - 12 - margin + arrowSize)
{
	arrowScale = 1.5;
	wantText = "<w>CONFIRM<w> SELECTION?";
	if mouse_check_button_pressed(mb_left)
	{
		snd_play_2d(sndClick);
		event_user(1);	
	}
}
else
{
	arrowScale = 1;	
}
draw_sprite_ext(sprLoadOutArrow,0,r - 24 - sideMargin, b - 12 - margin, arrowScale,arrowScale,270,c_white,1);
hoverSelected = false;	
if selectedCrown != -1
{
	var selectedCrownScale = 1;
	var xo = 0;
	var yo = 0;
	if (alarm[0] < 1 &&
	mouse_x < l + sideMargin + crownWidth &&
	mouse_x > l + 32 + sideMargin - crownWidth &&
	mouse_y > b - 12 - margin - crownHeight &&
	mouse_y < b - 12 - margin + crownHeight)
	{
		xo = 2;
		yo = -2;
		hoverSelected = true;
		if mouse_check_button_pressed(mb_left)
		{
			alarm[0] = 5;
			snd_play_2d(sndClickBack);
			selectedCrown = -1;
		}
	}
	if selectedCrown != -1
	{
		draw_sprite_ext(sprSkillSelected,0,l + 32 + sideMargin - 13, b - 12 - margin, 1,1,0,c_white,1);
		draw_sprite_ext(selectedCrownSprite,selectedCrown,l + 32 + sideMargin + xo - 13, b - 12 - margin + yo, 1,1,0,c_white,1);
	}
}

if wantText != ""
{
	draw_set_valign(fa_bottom)
	draw_set_halign(fa_right)
	var fulltxt = wantText;
	var txt2 = scrReplaceAllColourCodes(wantText);
	var drawx = l
	var drawy = __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-58//48

	if drawx+string_width(string_hash_to_newline(txt2))/2+2> l-2
		drawx = l-4-string_width(string_hash_to_newline(txt2))/2
	if drawx-string_width(string_hash_to_newline(txt2))/2-2 < __view_get( e__VW.XView, 0 )+2
		drawx = __view_get( e__VW.XView, 0 )+4+string_width(string_hash_to_newline(txt2))/2

	draw_set_color(c_black)
	draw_set_alpha(0.8)
	draw_rectangle(drawx-string_width(string_hash_to_newline(txt2))/2-2,drawy-17-string_height(string_hash_to_newline(txt2)),drawx+string_width(string_hash_to_newline(txt2))/2+2,drawy-12,0)
	draw_set_alpha(1)


	// draw_sprite_ext(sprMenuPointer,0,x,drawy-12,1,1,0,c_white,0.8)
	draw_set_color(make_colour_rgb(160,160,160));
	scrDrawTextColours(drawx+string_width(string_hash_to_newline(txt2))/2,drawy-14,fulltxt)
	/*
	if UberCont.crown_used[crown] > 0
	{
		var col = make_color_rgb(72,156,8);
		draw_set_color(col)
		draw_text(drawx+string_width(string_hash_to_newline(txt2))/2-1,drawy-15-string_height(string_hash_to_newline(txt2))+string_height(preTxt+string_hash_to_newline(crown_name[crown])),string_hash_to_newline(string(crown_name[crown])))
		draw_text(drawx+string_width(string_hash_to_newline(txt2))/2-1,drawy-13-string_height(string_hash_to_newline(txt2))+string_height(preTxt+string_hash_to_newline(crown_name[crown])),string_hash_to_newline(string(crown_name[crown])))
		draw_text(drawx+string_width(string_hash_to_newline(txt2))/2+1,drawy-13-string_height(string_hash_to_newline(txt2))+string_height(preTxt+string_hash_to_newline(crown_name[crown])),string_hash_to_newline(string(crown_name[crown])))
		draw_text(drawx+string_width(string_hash_to_newline(txt2))/2+1,drawy-15-string_height(string_hash_to_newline(txt2))+string_height(preTxt+string_hash_to_newline(crown_name[crown])),string_hash_to_newline(string(crown_name[crown])))
	}*/
	draw_set_color(c_white)
	//draw_text(drawx+string_width(string_hash_to_newline(txt2))/2,drawy-14-string_height(string_hash_to_newline(txt2))+string_height(preTxt+string_hash_to_newline(crown_name[crown])),string_hash_to_newline(string(crown_name[crown])))
}