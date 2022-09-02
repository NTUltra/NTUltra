/// @description xxx
var xx = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])*0.5;
var yy = camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0])*0.5;
draw_circle_colour(xx,yy,radius,c_fuchsia,c_purple,true);
draw_circle_colour(xx,yy,radius*1.25,c_purple,c_fuchsia,true);
draw_circle_colour(xx,yy,radius*1.5,c_fuchsia,c_purple,true);
radius *= 1.25;
if radius > camera_get_view_width(view_camera[0])
	instance_destroy();