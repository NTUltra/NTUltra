/// @description Init
depth = 2
image_speed = 0;
alarm[0] = 10;
x -= 16;
y += 16;
instance_create(x,y,Floor);
with Top
	instance_destroy();
with TopSmall
	instance_destroy();
with Wall
	instance_destroy();
x += 16;
y += 16;
name = "TAKE THE MULTI-CROWN";
textAngle = 0;