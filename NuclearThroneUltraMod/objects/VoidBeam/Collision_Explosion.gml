/// @description Eat explosion
BackCont.shake += 1;
with other
{
	with myExplosionMask {
		instance_destroy(id,false);
		mask_index = mskPickupThroughWall;
	}
	snd_play(sndProjectileDestroy,0.1,true);
	instance_destroy(id, false)
	with instance_create(x,y,Notice)
	{
		image_speed = 0.4;
		sprite_index = sprHumphryDestroyProjectile;	
	}
	mask_index = mskPickupThroughWall;
}