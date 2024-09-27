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

draw_line_width_colour(l + margin, b - 34 , r - margin, b - 34, 2,c_lime,c_lime);
var arrowSize = 12;
var arrowScale = 1;
if (mouse_x < r - margin + arrowSize &&
mouse_x > r - 32 - margin - arrowSize &&
mouse_y > b - 12 - margin - arrowSize &&
mouse_y < b - 12 - margin + arrowSize)
{
	arrowScale = 1.5;
}
else
{
	arrowScale = 1;	
}
draw_sprite_ext(sprLoadOutArrow,0,r - 32 - margin, b - 12 - margin, arrowScale,arrowScale,270,c_white,1);

if selectedCrown != -1
{
	var selectedCrownScale = 1;
	if (mouse_x < l + margin + crownWidth &&
	mouse_x > l + 32 + margin - crownWidth &&
	mouse_y > b - 12 - margin - crownHeight &&
	mouse_y < b - 12 - margin + crownHeight)
	{
		arrowScale = 1.5;
	}
	else
	{
		arrowScale = 1;	
	}
	draw_sprite_ext(selectedCrownSprite,0,l + 32 + margin, b - 12 - margin, arrowScale,arrowScale,0,c_white,1);	
}