/// @description Big boom chonko
snd_play_fire(sndDiscDie);
snd_play(sndExplosionXL);
with instance_create(x,y,Explosion) {
	scrCopyWeaponMod(other);
}