/// @description Sine
var xx = x;
var yy = y;
repeat(image_xscale)
{
	draw_sprite_ext(sprite_index,image_index,xx,yy,1,image_yscale,image_angle,c_white,1);
	xx += lengthdir_x(sprWdth,image_angle);
	yy += lengthdir_y(sprWdth,image_angle);
}