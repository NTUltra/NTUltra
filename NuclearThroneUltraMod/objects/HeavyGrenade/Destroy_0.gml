/// @description Green explosion
if (object_index == HeavyGrenade) && GetPlayerUltramod() == ultramods.bladeGrenade
	exit;
snd_play(sndExplosionL)
with instance_create(x,y,GreenExplosion)
	scrCopyWeaponMod(other);