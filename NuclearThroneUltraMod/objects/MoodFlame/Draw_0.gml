/// @description xxx
if alarm[4] > 0
{
	var t = alarm[4] / stretchTime;
	xTarget = lerp(x,xOrigin,t);
	yTarget = lerp(y,yOrigin,t);
	draw_sprite_ext(sprite_index,lerp(image_number,0,t),xOrigin,yOrigin,t,t,image_angle,c_white,1);
	var xl = lengthdir_x(4,direction+90);
	var yl = lengthdir_y(4,direction+90);
	var sxl = lengthdir_x(1,direction+90);
	var syl = lengthdir_y(1,direction+90);
	draw_triangle_colour(xTarget + sxl,yTarget + syl,x-xl,y-yl,x+xl,y+yl,c_white,c_yellow,c_yellow,false);
	draw_triangle_colour(xTarget - sxl ,yTarget - syl,xTarget + sxl,yTarget + syl,x+xl,y+yl,c_yellow,c_yellow,c_white,false);
}
draw_self();