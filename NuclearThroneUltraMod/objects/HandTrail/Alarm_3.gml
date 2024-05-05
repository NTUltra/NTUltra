/// @description Shrink out

if image_xscale < 0.15
	instance_destroy();
image_xscale -= shrinkRate;
image_yscale = image_xscale;
alarm[3] = 1;
x += lengthdir_x(1,image_angle);
y += lengthdir_y(1,image_angle);