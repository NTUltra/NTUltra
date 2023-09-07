/// @description Explode

// Inherit the parent event
event_inherited();
snd_play(sndExplosionS,0.1,true);
with instance_create(x+hspeed,y+vspeed,SmallExplosion) {
	dmg --;
	scrCopyWeaponMod(other);
}