/// @description Plasma
snd_play(sndPlasmaHit,0.1,true)
with instance_create(x,y,PlasmaImpact)
{
	direction = other.image_angle;
	speed += 1;
	scrCopyWeaponMod(other);
}
Sleep(10)