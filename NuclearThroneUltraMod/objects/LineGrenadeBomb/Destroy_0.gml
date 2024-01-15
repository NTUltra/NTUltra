/// @description Boom
instance_create(x,y,SmallExplosion);
snd_play(sndExplosionS);
snd_play(sndClusterOpen);
with instance_create(x,y,LineExplosionBurst)
{
	direction = other.direction;
	ammo = other.ammo;
	maxammo = ammo;
	time = other.time;
	scrCopyWeaponMod(other);
	team = other.team;
}