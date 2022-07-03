/// @description Gass

// Inherit the parent event
event_inherited();
snd_play(sndToxicBoltGas);
repeat(14)
with instance_create(x,y,ToxicThrowerGas)
	scrCanHumphry();

var ang = direction;
var am = 10;
var angstep = 36;
repeat(am)
{
	with instance_create(x,y,ToxicThrowerGas)
	{
		motion_add(0.5,ang);
		scrCanHumphry();
	}
	ang += angstep;
}