/// @description Go
if KeyCont.key_west[p] = 2 or KeyCont.key_west[p] = 1
	hspeed -= 1
if KeyCont.key_east[p] = 2 or KeyCont.key_east[p] = 1
	hspeed += 1
if KeyCont.key_nort[p] = 2 or KeyCont.key_nort[p] = 1
	vspeed -= 1
if KeyCont.key_sout[p] = 2 or KeyCont.key_sout[p] = 1
	vspeed += 1
motion_add(direction,2);
image_angle = direction;
if speed > 12
	speed = 12;