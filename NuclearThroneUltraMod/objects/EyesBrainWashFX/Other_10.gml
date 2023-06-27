/// @description Draw event
x = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])*0.5;
y = camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0])*0.5;
draw_circle(x,y,radius,true);
var dt = 1;
if UberCont.normalGameSpeed == 60
	dt = 0.5;
radius += 2*dt;
radius *= 1 + (0.2*dt);
if radius > 480
	instance_destroy();