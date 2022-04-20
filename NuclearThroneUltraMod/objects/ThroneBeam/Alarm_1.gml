/// @description Angle oohoo
image_angle += angleRate * angleDir;
if image_angle > angleMax || image_angle < -angleMax
	angleDir *= -1;

alarm[1] = 1;
