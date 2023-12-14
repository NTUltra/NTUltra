/// @description Keep angle on first frame
if image_index < 1 {
	image_angle = direction;
}
else {
	if (!shanked) {
		shanked = true;
		image_speed += 0.2;
		x += lengthdir_x(8,direction);
		y += lengthdir_y(8,direction);
		scrForcePosition60fps();
		motion_add(direction,2);
	}
	event_inherited();
}

