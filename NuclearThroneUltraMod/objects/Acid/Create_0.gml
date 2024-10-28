/// @description ACID SHADER
if UberCont.opt_freeze == 0 && UberCont.opt_shake == 0 && !scrIsGamemode(51)
	instance_destroy();
hueShift = shader_get_uniform(shdAcid,"hueShift");
hue = 0;
acidSpeed = 0.001;
alarm[0] = 1;
alarm[1] = 30;