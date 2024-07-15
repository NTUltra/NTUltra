/// @description Draw top
if canDamage
{
	draw_circle_width_colour(x,y,radius,width,damageColour);
	draw_circle_width_colour(x,y,radius-2,2,c_white);
}
else
{
	if alarm[1] < 6 && alarm[1] > 1
		draw_circle_width_colour(x,y,radius,max(1,width - 1) + 1,damageColour);
	else
		draw_circle_width_colour(x,y,radius,max(1,width - 2),colour);
}