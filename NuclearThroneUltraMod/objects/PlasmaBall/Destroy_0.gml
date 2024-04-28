snd_play(sndPlasmaHit,0.1,true)
with instance_create(x+hspeed,y+vspeed,PlasmaImpact)
{
	direction = other.direction;
	scrCopyWeaponMod(other);
}
Sleep(10)

