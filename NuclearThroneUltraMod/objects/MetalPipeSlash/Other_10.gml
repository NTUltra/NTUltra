/// @description Wow

// Inherit the parent event
event_inherited();
if hitSound
{
	hitSound = false;
	BackCont.shake += 20;
	BackCont.viewx2 += lengthdir_x(10,image_angle)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(10,image_angle)*UberCont.opt_shake
	snd_play(sndMetalPipeHit,0.02);
	Sleep(50);
}