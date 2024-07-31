snd_play(sndPlasmaHit,0.1,true)
with instance_create(x,y,PlasmaImpact)
{
	direction = other.direction;
	speed += 2;
sprite_index = sprBouncingPlasmaBallImpact;
scrCopyWeaponMod(other);
}
Sleep(10)

