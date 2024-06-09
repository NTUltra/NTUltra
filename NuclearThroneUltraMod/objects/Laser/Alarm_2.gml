image_yscale -= 0.25
if image_yscale <= 0.2
{
	if image_yscale < 0.05
		instance_destroy();
	alarm[0] = 0
	mask_index = mskPickupThroughWall;
}

img += 0.5

alarm[2] = 1;