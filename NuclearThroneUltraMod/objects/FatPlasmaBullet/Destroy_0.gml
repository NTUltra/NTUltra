/// @description Plasma

// Inherit the parent event
event_inherited();

snd_play(sndPlasmaHit);
with instance_create(x,y,PlasmaImpact)
{
	direction = other.image_angle;
	speed += 1;
	scrCopyWeaponMod(other);
}