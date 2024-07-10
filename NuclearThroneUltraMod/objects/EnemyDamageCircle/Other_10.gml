/// @description Draw top
if canDamage
{
	draw_circle_width_colour(x,y,radius,width,colour);
	draw_circle_width_colour(x,y,radius-2,1,c_white);
}
else
{
	draw_circle_width_colour(x,y,radius,width - 2,colour);	
}