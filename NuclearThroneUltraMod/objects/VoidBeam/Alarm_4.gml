/// @description Shrink
if image_yscale > 0.01
{
	if maxScaleOffset > 0.01
		maxScaleOffset -= 0.01;
	if minScale > 0.01
		minScale -= 0.01;
	image_yscale -= 0.0225;
	alarm[4] = 1;
}