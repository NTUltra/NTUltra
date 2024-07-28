if other.team!=2
{
	if (other.typ == 1 || other.typ == 2 || (other.typ == 3 && ultraD))
	{
		with other
		{
			if other.isGrenade
				instance_destroy(id,false);
			else
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
		else if bskin==3
		{
		with instance_create(x,y,BulletHit)
		sprite_index=sprHorrorHitD;
		}
		else
		{
		with instance_create(x,y,BulletHit)
		sprite_index=sprHorrorHit;
		}
	}
	else if other.typ == 3
	{
		with other
		{
			x = xprevious;
			y = yprevious;
		}
	}
}