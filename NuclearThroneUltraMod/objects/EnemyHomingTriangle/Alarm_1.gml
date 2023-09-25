/// @description Home in on target
scrTarget();
motion_add(direction,homingSpeed*0.7);
if target != noone && instance_exists(target) {
	motion_add(point_direction(x,y,target.x,target.y),homingSpeed*0.3);
}
image_angle = direction;
alarm[1] = 1;