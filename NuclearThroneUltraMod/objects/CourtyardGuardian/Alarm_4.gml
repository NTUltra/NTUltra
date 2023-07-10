/// @description Just fired
if choose(false,true)
{
	walk = actTime;
	motion_add(point_direction(x,y,target.x,target.y) + 180, acc*2);
}