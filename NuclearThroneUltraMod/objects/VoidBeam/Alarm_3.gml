/// @description Grow
image_yscale += 0.1;
if image_yscale > 2
{
	alarm[4] = 20;
	alarm[7] = 30;
}
else
	alarm[3] = 1;