/// @description Eat and boom
// Inherit the parent event
event_inherited();

snd_play(sndToxicBoltGas,0.1);
var am = 12;
var ang = direction;
var angStep = 360/am;
var gs = 2;
repeat(am)
{
	with instance_create(x,y,ToxicGas)
	{
		motion_add(angStep,gs);	
	}
	ang += angStep;
}