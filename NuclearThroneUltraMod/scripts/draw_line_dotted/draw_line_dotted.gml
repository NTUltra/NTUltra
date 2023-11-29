///draw_line_dotted();
// /@description
///@param
function draw_line_dotted(xx,yy,tx,ty,col){
	var dir = point_direction(xx,yy,tx,ty);
	var lx = lengthdir_x(2,dir);
	var ly = lengthdir_y(2,dir);
	repeat(ceil(point_distance(xx,yy,tx,ty)*0.5))
	{
		draw_point_colour(xx,yy,col);
		xx += lx;
		yy += ly;
	}
}