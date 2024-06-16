/// @description Basicly a HUD element right
draw_self();
with target
{
	draw_circle_width_colour(x,y,other.range,4,c_black);
	draw_circle_width_colour(x,y,other.range+1,2,c_white);
}