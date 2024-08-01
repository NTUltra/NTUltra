/// @description Slowdown

// Inherit the parent event
event_inherited();
BackCont.shake += 10;
BackCont.viewx2 += lengthdir_x(5,direction+180)*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(5,direction+180)*UberCont.opt_shake
if speed > 0
	speed -= 4;