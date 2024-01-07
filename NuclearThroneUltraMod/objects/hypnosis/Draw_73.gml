/// @description xxx
var xx = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])*0.5;
var yy = camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0])*0.5;
draw_circle_width_colour_ext(xx,yy,radius,1,c_fuchsia,c_purple);
draw_circle_width_colour_ext(xx,yy,radius*1.25,1,c_purple,c_fuchsia);
draw_circle_width_colour_ext(xx,yy,radius*1.5,1,c_fuchsia,c_purple);
radius *= 1.25;
if radius > camera_get_view_width(view_camera[0])
	instance_destroy();