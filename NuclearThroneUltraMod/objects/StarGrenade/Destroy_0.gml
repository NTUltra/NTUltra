snd_play(sndExplosion)
with instance_create(x,y - 8,Explosion)
	scrCopyWeaponMod(other);
with instance_create(x,y,StarExplosion)
{
	team = other.team;
	scrCopyWeaponMod(other);
}
scrDrop(5,0,true);