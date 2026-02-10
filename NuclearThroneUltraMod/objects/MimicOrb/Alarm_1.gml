/// @description Follow creator
alarm[1] = 1
if instance_exists(creator)
{
	var xN = (creator.x - xPrev) * followRate;
	var yN = (creator.y - yPrev) * followRate;
	var pureDirection = creator.direction;
	var diffo = clamp(angle_difference(pureDirection,aimPrevious)*followRate,-15,15);
	var newDirection = aimPrevious + diffo;
	aimPrevious = direction;
	image_angle = direction;
	if alarm[5] < 1
	{
		direction = newDirection;
		speed = max(speed, 3);
		x += xN;
		y += yN;
	}
	xPrev = creator.x;
	yPrev = creator.y;
}