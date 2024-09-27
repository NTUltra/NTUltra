snd_play(sndPlasmaHit,0.1,true)
with instance_create(x+hspeed,y+vspeed,PlasmaImpact)
{
	speed += 1;
	direction = other.direction;
	scrCopyWeaponMod(other);
}

