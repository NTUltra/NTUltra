/// @description Draw loader
var xx = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) + 32;
var yy = camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) - 32;
draw_sprite(sprLoading,image_index,xx,yy);