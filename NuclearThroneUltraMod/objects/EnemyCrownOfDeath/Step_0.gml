/// @description Run at target

// Inherit the parent event
event_inherited();
scrTarget();
if target > -1 && instance_exists(target)
{
	var dir = point_direction(x,y,target.x,target.y)
	motion_add(dir,0.9);
}
