if object_index == MiniPlasmaBall
{
	snd_play(sndPlasmaHit,0.1,true)
	with instance_create(x + hspeed,y + vspeed,MiniPlasmaImpact)
	{
		direction = other.direction;
		speed = 2;
		scrCopyWeaponMod(other);
	}
}