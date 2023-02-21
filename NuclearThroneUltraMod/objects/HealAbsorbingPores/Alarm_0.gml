/// @description Scale
if image_xscale < 1
{
	alarm[0] = 1;
	image_xscale += 0.01;
	image_yscale += 0.01;
}