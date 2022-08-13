/// @description Gass

// Inherit the parent event
event_inherited();
snd_play(sndToxicBoltGas,0.15,true);
instance_create(x+lengthdir_x(4,direction),y+lengthdir_y(4,direction),ToxicThrowerGas)
instance_create(x+lengthdir_x(8,direction),y+lengthdir_y(8,direction),ToxicThrowerGas)
instance_create(x,y,ToxicThrowerGas)

