/// @description xxx
if hasPluto && isGettingSucked
{
	image_angle = suckDirection + suckOffset;
	var xl = lengthdir_x(3,suckDirection+90);
	var yl = lengthdir_y(3,suckDirection+90);
	var sxl = lengthdir_x(0.5,suckDirection+90);
	var syl = lengthdir_y(0.5,suckDirection+90);
	draw_triangle_colour(xOrigin + sxl,yOrigin + syl,x-xl,y-yl,x+xl,y+yl,c_lime,col,col,false);
	draw_triangle_colour(xOrigin - sxl ,yOrigin - syl,xOrigin + sxl,yOrigin + syl,x+xl,y+yl,c_lime,c_lime,col,false);
}
draw_self();