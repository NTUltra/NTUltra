/// @description Draw bloom
var ba = 0.7;
var vx = camera_get_view_x(view_camera[0])
var vy = camera_get_view_y(view_camera[0])
var ys = max(1.5,image_yscale+1);
draw_sprite_ext(sprite_index,image_index,x - vx,y - vy,image_xscale,ys,image_angle,c_white,alpha);
if image_index > 0
{
	draw_sprite_ext(sprEdge,indexStart,x - vx,y - vy,-1,ys,image_angle,c_white,alpha);
	draw_sprite_ext(sprEdge,indexEnd,endX - vx,endY - vy,1,ys,image_angle,c_white,alpha);
}