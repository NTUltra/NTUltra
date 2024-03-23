/// @description Rotate

// Inherit the parent event
event_inherited();

if UberCont.normalGameSpeed == 60
	image_angle += rotation * 0.5;
else
	image_angle += rotation;
if speed < 1
	instance_destroy();