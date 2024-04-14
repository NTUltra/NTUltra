/// @description Eats explosions
BackCont.shake += 1;
with other
{
	with myExplosionMask {
		instance_destroy(id,false);
		mask_index = mskPickupThroughWall;
	}
	instance_destroy(id, false);
	mask_index = mskPickupThroughWall;
}