snd_play(sndExplosionS)
with instance_create(x,y,SmallExplosion)
{
	direction = other.direction;
	speed = 0.5;
	scrCopyWeaponMod(other);
}