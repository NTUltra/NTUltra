/// @description xxx
image_angle = direction;

image_xscale = clamp(speed*0.25,1,2);

if image_alpha < 0.2
instance_destroy();