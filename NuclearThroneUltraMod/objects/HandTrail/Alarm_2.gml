/// @description Grow
if image_xscale < 1
{
	image_xscale += growRate;
	image_yscale = image_xscale;
	alarm[2] = 1;
}
else if alarm[3] < 1
{
	image_xscale = 1;
	image_yscale = image_xscale;
	alarm[3] = 60;
}