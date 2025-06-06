/// @description Lightning
var xx = x;
var yy = y;
repeat(8)
{
	draw_sprite_ext(sprite_index,image_index,xx,yy,scale,scale,angle,c_white,1);
	xx += lengthdir_x(32,angle);
	yy += lengthdir_y(32,angle);
}