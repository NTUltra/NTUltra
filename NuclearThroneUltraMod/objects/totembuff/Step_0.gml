/// @description Scale
image_xscale += scaleIncrease;
image_yscale += scaleIncrease;
if image_xscale > 1
	image_alpha -= 0.1;
if image_alpha < 0.1
	instance_destroy();