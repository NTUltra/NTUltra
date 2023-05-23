/// @description Gass

// Inherit the parent event
event_inherited();
snd_play(sndToxicBoltGas);
repeat(14)
instance_create(x,y,ToxicThrowerGas)

var ang = direction;
var am = 10;
var angstep = 36;
repeat(am)
{
	with instance_create(x,y,ToxicThrowerGas)
	{
		motion_add(ang,1);
	}
	ang += angstep;
}