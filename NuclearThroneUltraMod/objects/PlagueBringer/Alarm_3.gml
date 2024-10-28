/// @description Termites!
alarm[3] = 20;
var ran = random(360);
BackCont.viewx2 += lengthdir_x(10,ran)*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(10,ran)*UberCont.opt_shake
with Player
{
	snd_play(sndTermite,0.2);
	with instance_create(x,y,Termite)
	{
		motion_add(ran,3)
		team = 2;
	}
}