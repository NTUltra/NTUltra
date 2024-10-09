/// @description Sine
var xx = x;
var yy = y;
if right < 0
{
	xx += lengthdir_x(sprWdth,image_angle);
	yy += lengthdir_y(sprWdth,image_angle);
}
repeat(image_xscale)
{
	draw_sprite_ext(sprite_index,image_index,xx,yy,right,image_yscale,image_angle,c_white,1);
	xx += lengthdir_x(sprWdth,image_angle);
	yy += lengthdir_y(sprWdth,image_angle);
}