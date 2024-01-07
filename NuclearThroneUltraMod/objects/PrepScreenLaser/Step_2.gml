/// @description Top of screen
if !instance_exists(owner)
	instance_destroy();
y = camera_get_view_y(view_camera[0]);
time += 0.1;
if time > 2
	time = 2;