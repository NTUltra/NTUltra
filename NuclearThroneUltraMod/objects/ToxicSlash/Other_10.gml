/// @description Fire the fucker

// Inherit the parent event
event_inherited();

var hitGuy = hitEntities[array_length(hitEntities)-1];
var t = team;
with hitGuy
{
	BackCont.shake += 2
	snd_play(sndToxicBoltGas,0.05);
	repeat(6)
	{
		with instance_create(x,y,ToxicThrowerGas)
		{
			motion_add(other.direction,1);
		}
	}
}