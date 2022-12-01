/// @description Shrink
image_xscale -= 0.1;
image_yscale = image_xscale;
if image_xscale < 0.2
	instance_destroy();

alarm[4] = 1;