/// @description Line to boss
if instance_exists(creator)
{
	draw_line_colour(x,y,creator.x,creator.y,c_red,c_red);	
}
draw_self();