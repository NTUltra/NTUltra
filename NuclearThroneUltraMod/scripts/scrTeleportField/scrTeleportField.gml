///scrTeleportField();
// /@description
///@param
function scrTeleportField(otherTeleport, movedEntities, shouldMove = true)
{
	if !array_contains(movedEntities,id)
	{
		var xOffset = other.x - x;
		var yOffset = other.y - y;
		var tx = otherTeleport.x - xOffset;
		var ty = otherTeleport.y - yOffset;
		
		var hitWalls = ds_list_create();
		var al = instance_place_list(tx,ty,WallHitMe,hitWalls,false);
		for (var i = 0; i < al; i++)
		{
			with hitWalls[| i] {
				instance_destroy();
				instance_create(x,y,FloorExplo);
			}
		}
		ds_list_destroy(hitWalls);
		var msk = mask_index;
		mask_index = mskPickupThroughWall;
		x = tx;
		y = ty;
		scrForcePosition60fps();
		mask_index = msk;
		if (shouldMove)
		{
			//direction = point_direction(otherTeleport.x,otherTeleport.y,x,y)
			motion_add(direction,2);
		}
	}
	movedEntities[array_length(movedEntities)] = id;
	return movedEntities;
}