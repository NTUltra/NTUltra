/// @description Home in on target
scrTarget();
motion_add(direction,homingSpeed*0.5);
if target > -1 && instance_exists(target) {
	motion_add(point_direction(x,y,target.x,target.y),homingSpeed*0.5);
}
image_angle = direction;
alarm[1] = 1;