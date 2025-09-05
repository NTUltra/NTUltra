
if /*team != other.team && */other.typ != 0
{
	BackCont.shake += 1;
	with other
	{
		//snd_play(sndProjectileDestroy,0.1,true);
		with instance_create(x,y,PlutoFX)
		{
			sprite_index = sprVoidBulletTrail;
			image_index = irandom(image_number - 1);
		}
		instance_destroy(id, false)
		/*
		with instance_create(x,y,Notice)
		{
			image_speed = 0.4;
			sprite_index = sprHumphryDestroyProjectile;	
		}
		*/
	}
}

