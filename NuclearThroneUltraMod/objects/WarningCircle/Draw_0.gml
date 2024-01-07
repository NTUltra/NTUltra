/// @description Cirlce
if r > 64
{
	opacity -= 0.1;
	if opacity < 0
		instance_destroy();
	r += 8;
}
else
{
	r *= 1.1	
}
draw_set_alpha(opacity);
draw_circle_width_colour(x,y,r,1,c_white);
draw_set_alpha(1);