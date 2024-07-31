/// @description Plasma
snd_play(sndPlasmaHit);
with instance_create(x,y,PlasmaImpact)
{
	direction = other.direction;
	speed += 2;
	scrCopyWeaponMod(other);
}