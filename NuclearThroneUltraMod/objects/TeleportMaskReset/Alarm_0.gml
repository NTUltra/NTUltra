/// @description An alarm that doesnt have to be framerate dependant
with target
{
	if mask_index == mskNoCollision
	{
		mask_index = other.targetMask;
		var hitWalls = ds_list_create();
		var al = instance_place_list(x,y,WallHitMe,hitWalls,false);
		for (var i = 0; i < al; i++)
		{
			with hitWalls[| i] {
				instance_destroy();
				instance_create(x,y,FloorExplo);
			}
		}
		ds_list_destroy(hitWalls);
	}
}