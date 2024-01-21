event_inherited()

if walk > 0
{
	walk -= 1
	motion_add(moveDirection,acc)
}
else {
	speed *= 0.5;
}
if speed > maxSpeed
speed = maxSpeed

vspeed = 0;

if (x > middleX + moveRange && moveDirection == 0) || (x < middleX - moveRange && moveDirection == 180)
{
	speed *= 0.5;
	walk = 1;
	if moveDirection == 0
		moveDirection = 180;
	else
		moveDirection = 0;
	direction = moveDirection;
	alarm[1] = max(alarm[1], actTime * 0.5);
}
if target != noone && instance_exists(target)
{
	var aim = point_direction(x,y,target.x,target.y);
	if UberCont.normalGameSpeed == 60
		gunangle += angle_difference(aim,gunangle) * 0.25;
	else
		gunangle += angle_difference(aim,gunangle) * 0.5;
}