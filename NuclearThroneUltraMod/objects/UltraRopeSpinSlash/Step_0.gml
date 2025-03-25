/// @description Keep angle on first frame
if image_index < 2 {
	image_angle = direction;
}
else {
	if (!shanked) {
		dmg += 6;
		shanked = true;
		image_speed += 0.2;
		x += lengthdir_x(16,direction);
		y += lengthdir_y(16,direction);
		scrForcePosition60fps();
		speed = 1 + longarms;
		BackCont.shake += 10;
		BackCont.viewx2 += lengthdir_x(14,direction+180)*UberCont.opt_shake
		BackCont.viewy2 += lengthdir_y(14,direction+180)*UberCont.opt_shake
	}
	event_inherited();
}

