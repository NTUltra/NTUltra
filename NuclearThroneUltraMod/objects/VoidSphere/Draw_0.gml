/// @description Scaling
if alarm[3] < 1
{
	draw_sprite_ext(sprite_index,image_index,x,y,xScale + 0.2,yScale + 0.2,image_angle,c_white,1);
}
else
{
	draw_sprite_ext(sprite_index,image_index,x,y,xScale,yScale,image_angle,c_white,1);
}