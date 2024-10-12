/// @description Wall removed?
alarm[0] = 2;
if myWall == noone || !instance_exists(myWall)
{
	instance_destroy();
}