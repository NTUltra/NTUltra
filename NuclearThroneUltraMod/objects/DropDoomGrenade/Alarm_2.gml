/// @description Stall mid air
if bounce
	alarm[4] = 1;
else
{
	alarm[4] = 3;
	image_speed = 0.4;
	instance_create(x,y,DropDoomGrenade);
}
