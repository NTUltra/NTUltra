/// @description DRAW
if instance_exists(PlagueBringer)
{
	//EVERYTHING IS BLACK
	if hasPluto && isGettingSucked
	{
		image_angle = suckDirection + suckOffset;
		var xl = lengthdir_x(3,suckDirection+90);
		var yl = lengthdir_y(3,suckDirection+90);
		var sxl = lengthdir_x(0.5,suckDirection+90);
		var syl = lengthdir_y(0.5,suckDirection+90);
		draw_triangle_colour(xOrigin + sxl,yOrigin + syl,x-xl,y-yl,x+xl,y+yl,c_black,c_black,c_black,false);
		draw_triangle_colour(xOrigin - sxl ,yOrigin - syl,xOrigin + sxl,yOrigin + syl,x+xl,y+yl,c_black,c_black,c_black,false);
	}
	draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,c_black,1);
}
else
{
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
}