/// @description wow rotate
if image_angle < 45
{
	image_angle += 2;
	BackCont.shake += 1;
	alarm[1] = 1;
}
else
{
	image_angle = 45;
}
