///collision_line_width();
// /@description
///@param
function collision_line_width(ox,oy,tx,ty,obj,prec,notme,width){
	var ang = point_direction(ox,oy,tx,ty);
	var lx = lengthdir_x(width,ang+90);
	var ly = lengthdir_y(width,ang+90);
	if collision_line(ox+lx,oy+ly,tx+lx,ty+ly,Wall,prec,notme)
		return true
	lx = lengthdir_x(width,ang-90);
	ly = lengthdir_y(width,ang-90);
	return collision_line(ox+lx,oy+ly,tx+lx,ty+ly,Wall,prec,notme);
}