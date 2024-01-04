/// @description Scaling
image_xscale -= 0.05;
if image_xscale < 0.1
	instance_destroy();

alarm[2] = 1;
