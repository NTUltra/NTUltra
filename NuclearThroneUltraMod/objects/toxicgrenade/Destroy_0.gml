/// @description Gass

// Inherit the parent event
sticky = false;
event_inherited();
snd_play(sndToxicBoltGas);
repeat(14)
with instance_create(x,y,ToxicThrowerGas)
	scrCopyWeaponMod(other);