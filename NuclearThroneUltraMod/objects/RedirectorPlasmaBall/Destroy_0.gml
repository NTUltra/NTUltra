/// @description Different image
snd_play(sndPlasmaHit,0.1,true)
with instance_create(x,y,PlasmaImpact)
{
	sprite_index = sprRedirectorPlasmaImpact;
	direction = other.direction;
	speed += 1;
	scrCopyWeaponMod(other);
}
Sleep(10)