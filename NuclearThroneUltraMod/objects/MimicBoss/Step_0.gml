event_inherited()
if walk > 0
{
	walk -= 1
	motion_add(direction,acc)
}
if alarm[5] > 0 && instance_exists(target) && target != noone
{
	direction = point_direction(x,y,target.x,target.y);
	if point_distance(x,y,target.x,target.y) < 32
	{
		speed = 0;	
	}
}
if alarm[2] > 0 && speed > maxSpeed - 1
{
	speed = maxSpeed - 1;
}
else if weaponType == 0 && speed > maxSpeed + 1
{
	speed = maxSpeed + 1;
}
else if speed > maxSpeed
	speed = maxSpeed

