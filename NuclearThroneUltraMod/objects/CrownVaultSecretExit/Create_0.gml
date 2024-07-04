/// @description Init
depth = 8
image_speed = 0.4;
alarm[0] = 10;
x -= 16;
y += 16;
instance_create(x,y,Floor);
x += 16;
y += 16;
name = "";
nav = 0;
textScaleX = 1;
textScaleY = 1;
textAngle = 0;
alarm[6] = 5;
if instance_exists(UberCont) && !UberCont.unlocked_alt_routes
{
	instance_destroy(id,false);
	exit;
}