/// @description Draw it
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,c_white,1)
if image_index > 0
{
	draw_sprite_ext(sprEdge,indexStart,x,y,-1,image_yscale,image_angle,c_white,alpha)
	draw_sprite_ext(sprEdge,indexEnd,endX,endY,1,image_yscale,image_angle,c_white,alpha)
}