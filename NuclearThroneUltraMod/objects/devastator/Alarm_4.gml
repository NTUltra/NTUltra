/// @description Wall collision

if collision_line(xprevious,yprevious,x,y,Wall,false,false)
{
	instance_destroy();
}
alarm[4] = 1;