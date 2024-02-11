/// @description xxx
if hasPluto && isGettingSucked
{
	image_angle = suckDirection + 90;
	var xl = lengthdir_x(3,image_angle+90);
	var yl = lengthdir_y(3,image_angle+90);
	draw_triangle_colour(xOrigin,yOrigin,x-xl,y-yl,x+xl,y+yl,c_lime,col,col,false);
}
draw_self();