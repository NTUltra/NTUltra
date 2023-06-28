/// @description Shrink
vspeed -= 0.1;
fade += fadeDir;
useOutlineCol = col;
if fade > surface_get_height(surf)
{
	instance_destroy();
}
alarm[5] = 1;