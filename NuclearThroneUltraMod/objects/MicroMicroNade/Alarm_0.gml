/// @description Explode

// Inherit the parent event
event_inherited();

snd_play(sndExplosionS);
with instance_create(x,y,SmallExplosion) {
	dmg -= 1;
	scrCopyWeaponMod(other);	
}