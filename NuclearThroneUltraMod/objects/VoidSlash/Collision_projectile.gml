if other.isGrenade && team == 2
{
	BackCont.shake += 2;
	snd_play(sndRicochet,0.1,true);
	with other
		scrDeflectNade(other.direction);
}
else if team != other.team && other.typ != 0
{
	BackCont.shake += 1;
	with other
	{
		//snd_play(sndProjectileDestroy,0.1,true);
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

