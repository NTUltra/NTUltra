event_inherited()

motion_add(moveDirection,acc)

if speed > maxSpeed
speed = maxSpeed

if UberCont.normalGameSpeed == 60
	image_angle += angle_difference(moveDirection,image_angle) * 0.05;
else
	image_angle += angle_difference(moveDirection,image_angle) * 0.1;