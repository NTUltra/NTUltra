/// @description Gass

// Inherit the parent event
event_inherited();
snd_play(sndToxicBoltGas,0.15,true);
if choose(true,false)
	instance_create(x+lengthdir_x(6,direction+180),y+lengthdir_y(6,direction+180),ToxicThrowerGas)
instance_create(x+lengthdir_x(2,direction+180),y+lengthdir_y(2,direction+180),ToxicThrowerGas)
with instance_create(x,y,ToxicThrowerGas)
{
	motion_add(other.direction,1);
}