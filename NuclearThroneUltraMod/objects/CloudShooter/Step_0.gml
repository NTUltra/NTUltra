event_inherited()

motion_add(moveDirection,acc)

if speed > maxSpeed
speed = maxSpeed
if point_distance(x,y,xstart,ystart) > originRange
{
	if UberCont.normalGameSpeed == 60
		moveDirection += angle_difference(point_direction(x,y,xstart,ystart), moveDirection) * 0.025;
	else
		moveDirection += angle_difference(point_direction(x,y,xstart,ystart), moveDirection) * 0.05;
}
if UberCont.normalGameSpeed == 60
	image_angle += angle_difference(moveDirection,image_angle) * 0.05;
else
	image_angle += angle_difference(moveDirection,image_angle) * 0.1;