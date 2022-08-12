/// @description Init
if UberCont.opt_freeze == 0 && UberCont.opt_shake == 0
	instance_destroy();
alpha = 0.2;
alarm[0] = 1;
alarm[1] = 10;//Flash duration
theColour = c_white;