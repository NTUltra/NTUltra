if object_index == MiniPlasmaBall
{
	snd_play(sndPlasmaHit,0.1,true)
	with instance_create(x + hspeed,y + vspeed,MiniPlasmaImpact)
		scrCopyWeaponMod(other);
}