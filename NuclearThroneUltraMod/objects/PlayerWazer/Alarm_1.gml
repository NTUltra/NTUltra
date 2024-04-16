/// @description shrink end
if alarm[0] < 1 || ending
{
	alarm[1] = 1;

	image_yscale -= 0.3;
	if image_yscale < 0
		instance_destroy();
}
else
{
	image_yscale = 1.8;	
}