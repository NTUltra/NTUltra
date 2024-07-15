/// @description Shrink
canDamage = false;
alarm[2] = 1;
width -= 0.3;
radius += 1;
if width < 0.2
{
	instance_destroy();	
}
