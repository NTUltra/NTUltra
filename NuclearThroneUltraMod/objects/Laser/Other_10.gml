/// @description Draw my bloom
var ba = 0.7;
var vx = camera_get_view_x(view_camera[0])
var vy = camera_get_view_y(view_camera[0])
var ys = max(1.5,image_yscale+1);
draw_sprite_ext(sprite_index,-1,x - vx,y - vy,image_xscale,ys,image_angle,c_white,ba)
draw_sprite_ext(startImg,img,xstart - vx ,ystart - vy,2,ys,image_angle,c_white,ba)
draw_sprite_ext(endImg,img,x - vx,y - vy,2,ys,image_angle,c_white,ba)