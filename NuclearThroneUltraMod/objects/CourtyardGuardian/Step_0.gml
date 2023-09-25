event_inherited()

if walk > 0
{
	walk -= 1
	motion_add(direction,acc)
}
	
if instance_exists(Floor) && (!collision_point(x,y,Floor,false,false) || place_meeting(x,y,Wall))
{
	var nearest = instance_nearest(x,y,Floor);
	var nx = nearest.x + 16;
	var ny = nearest.y + 16;
	if nearest.object_index == FloorExplo
	{
		nx = nearest.x + 8;
		ny = nearest.y + 8;
	}
	var dir = point_direction(x,y,nx,ny);
	motion_add(dir,acc*0.8);
	if walk <= 0 && target != noone && instance_exists(target)
		motion_add(point_direction(x,y,target.x,target.y),acc*0.5);
}
else if walk > 0 && instance_exists(Wall)
{
	var nearest = instance_nearest(x,y,Wall)
	motion_add(point_direction(x,y,nearest.x,nearest.y)+180,acc*0.5);
}
if speed > maxSpeed && my_health > 0
	speed = maxSpeed
