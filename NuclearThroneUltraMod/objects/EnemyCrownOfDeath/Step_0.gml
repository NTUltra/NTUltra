/// @description Run at target

// Inherit the parent event
event_inherited();
scrTarget();
if target != noone && instance_exists(target) && point_distance(x,y,target.x,target.y) > 48
{
	var dir = point_direction(x,y,target.x,target.y)
	motion_add(dir,0.8);
}
