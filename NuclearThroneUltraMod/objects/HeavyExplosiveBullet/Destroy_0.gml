/// @description Explode BIGO CHUNKO
snd_play(sndExplosionL)
with instance_create(x + lengthdir_x(16,direction),y + lengthdir_y(16,direction),GreenExplosion)
{
	dmg -= 1;
	direction = other.direction;
	scrCopyWeaponMod(other);
}