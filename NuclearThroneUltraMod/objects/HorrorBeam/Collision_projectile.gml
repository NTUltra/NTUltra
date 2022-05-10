if other.team!=2 && other.typ != 3
{
	with other
	{
	if object_index!=PopoNade&&object_index!=Grenade
	instance_destroy();
	}

	if !ultraD
	{
	with HorrorBeam
	{
	ammo=0;
	if originnr=other.originnr
	instance_destroy();
	}
	instance_destroy();
	}
	ammo=0;



	if bskin=1
	{
	with instance_create(x,y,BulletHit)
	sprite_index=sprHorrorHitB;
	}
	else if bskin=2
	{
	with instance_create(x,y,BulletHit)
	sprite_index=sprHorrorHitC;
	}
	else
	{
	with instance_create(x,y,BulletHit)
	sprite_index=sprHorrorHit;
	}


}

