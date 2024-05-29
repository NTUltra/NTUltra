/// @description Alpha gone
alpha -= 0.1;
if alpha <= 0.2
{
	if alpha <= 0
		instance_destroy();
	mask_index = mskPickupThroughWall;
}
alarm[2] = 1;