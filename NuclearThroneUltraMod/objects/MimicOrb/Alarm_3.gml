/// @description Shrink
alarm[3] = 1;
image_xscale -= 0.025;
image_yscale = image_xscale;
if image_xscale < 0.025
	instance_destroy();