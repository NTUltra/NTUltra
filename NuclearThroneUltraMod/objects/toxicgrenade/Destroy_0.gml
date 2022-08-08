/// @description Gass

// Inherit the parent event
sticky = false;
event_inherited();
snd_play(sndToxicBoltGas);
repeat(14)
instance_create(x,y,ToxicThrowerGas)