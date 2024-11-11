
snd_play(sndPlasmaHit,0.1,true)
with instance_create(x+hspeed,y+vspeed,PlasmaImpact)
{
	speed += 0.5;
	direction = other.direction;
	scrCopyWeaponMod(other);
}

