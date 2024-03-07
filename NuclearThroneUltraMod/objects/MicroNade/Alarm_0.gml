/// @description Explode

// Inherit the parent event
event_inherited();

snd_play(sndExplosionS);
with instance_create(x + lengthdir_x(4,direction),y + lengthdir_y(4,direction),SmallExplosion) {
	scrCopyWeaponMod(other);	
}