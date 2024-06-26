/// @description Start ending 2
x = camera_get_view_x(view_camera[0]) + (camera_get_view_width(view_camera[0]) * 0.5);
y = camera_get_view_y(view_camera[0]) + (camera_get_view_height(view_camera[0]) * 0.5);
scrForcePosition60fps();
var toppers = TopCont.depth - 9;
depth = toppers - 1;
instance_create_depth(x,y,toppers,ThroneIISpiral);
alarm[1] = 2;