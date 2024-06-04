/// @description Shrink and rotate
image_angle += rotation;
image_xscale -= shrinkRate;
image_yscale = image_xscale;
if image_xscale < 0.1
	instance_destroy();
alarm[0] = 1;