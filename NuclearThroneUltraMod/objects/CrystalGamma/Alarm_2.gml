/// @description
image_xscale -= 0.1;
image_yscale = image_xscale;
image_alpha -= 0.1;
if image_alpha < 0.1 || image_xscale < 0.1
	instance_destroy();
alarm[2] = 1;