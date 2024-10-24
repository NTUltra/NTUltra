/// @description Before sweat fades
vspeed += 0.3;//Gravity
image_alpha -= 0.1;
if image_alpha < 0.2
	instance_destroy();