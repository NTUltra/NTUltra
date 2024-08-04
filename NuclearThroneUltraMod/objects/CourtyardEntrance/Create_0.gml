/// @description Init
depth = 8
image_speed = 0.4;
alarm[0] = 10;
x -= 16;
y += 16;
instance_create(x,y,Floor);
x += 16;
y += 16;
name = "EXIT TO COURTYARD";
nav = 0;
textAngle = 0;
alarm[6] = 5;
if scrIsGamemode(10) || (instance_exists(UberCont) && !UberCont.unlocked_alt_routes)
{
	instance_destroy(id,false);
	exit;
}