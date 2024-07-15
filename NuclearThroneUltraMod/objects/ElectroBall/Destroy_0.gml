snd_play(sndPlasmaHit,0.1,true)
event_inherited();
with instance_create(x,y,PlasmaImpact)
{
	dmg = other.dmg;
	sprite_index=sprElectroImpact;
	mask_index = mskElectroImpact;
	direction = other.direction;
	scrCopyWeaponMod(other);
}