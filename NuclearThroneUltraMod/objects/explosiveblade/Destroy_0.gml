/// @description BOOM

// Inherit the parent event
event_inherited();
snd_play(sndExplosion);
with instance_create(xprevious-hspeed,yprevious-vspeed,Explosion)
	scrCopyWeaponMod(other);