/// @description Draw menu
var margin = 4;
var width = 128;
var crownHeight = 34;
var crownWidth = 26;
var t = camera_get_view_y(view_camera[0]);
var r = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]);
var l = r - width;
var b = t + camera_get_view_height(view_camera[0]) - 67;
draw_rectangle_colour(l,t,r,b,c_black,c_black,c_black,c_black,false);

draw_line_width_colour(l + margin, b - 38 , r - margin, b - 38, 2,c_lime,c_lime);
var xx = l + margin;
var yy = t + margin;

var i = 0;
repeat(totalCrowns)
{
	var xo = 0;
	var yo = 0;
	if scrIsCrown(Player.crown)
		draw_sprite_ext(sprCrownSelect,currentCrown[i],xx + 13 + xo, yy + 19 - yo, 1,1,0,c_white,1);
	else
		draw_sprite_ext(sprCrownSelect,currentCrown[i],xx + 13 + xo, yy + 19 - yo, 1,1,0,c_white,0.5);
	xx += 29;
	if xx > r - 36
	{
		xx = l + margin;
		yy += 36;
	}
	i += 1;
}


var arrowSize = 12;
var arrowScale = 1;
if (mouse_x < r - margin + arrowSize &&
mouse_x > r - 32 - margin - arrowSize &&
mouse_y > b - 12 - margin - arrowSize &&
mouse_y < b - 12 - margin + arrowSize)
{
	arrowScale = 1.5;
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
draw_sprite_ext(sprLoadOutArrow,0,r - 32 - margin, b - 12 - margin, arrowScale,arrowScale,270,c_white,1);
hoverSelected = false;	
if selectedCrown != -1
{
	var selectedCrownScale = 1;
	var xo = 0;
	var yo = 0;
	if (mouse_x < l + margin + crownWidth &&
	mouse_x > l + 32 + margin - crownWidth &&
	mouse_y > b - 12 - margin - crownHeight &&
	mouse_y < b - 12 - margin + crownHeight)
	{
		xo = 2;
		yo = -2;
		hoverSelected = true;
		if mouse_check_button_pressed(mb_left)
		{
			snd_play_2d(sndClickBack);
			selectedCrown = -1;
		}
	}
	if selectedCrown != -1
	{
		draw_sprite_ext(sprSkillSelected,0,l + 32 + margin - 13, b - 12 - margin, 1,1,0,c_white,1);
		draw_sprite_ext(selectedCrownSprite,selectedCrown,l + 32 + margin + xo - 13, b - 12 - margin + yo, 1,1,0,c_white,1);
	}
}