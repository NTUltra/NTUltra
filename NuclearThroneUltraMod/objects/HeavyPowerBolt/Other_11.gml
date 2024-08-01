/// @description Destroy walls a little
if speed > 0
{
	instance_create(x + hspeed * 0.5,y + vspeed * 0.5,WallBreak);
	BackCont.shake += 30;
	BackCont.viewx2 += lengthdir_x(5,direction+180)*UberCont.opt_shake
	BackCont.viewy2 += lengthdir_y(5,direction+180)*UberCont.opt_shake
	x += hspeed;
	y += vspeed;
	audio_stop_sound(sndOldHeavyPowerCrossbowLoop);
	snd_play(choose(sndMeleeSpearHit1,sndMeleeSpearHit2),0.1);
}
// Inherit the parent event
event_inherited();

