///xxx();
// /@description
///@param
function scrTeleportToFloor(){
	var n = instance_nearest(x,y,Floor);
	if n != noone
	{
		var msk = mask_index;
		mask_index = mskPickupThroughWall;
		var o = 16;
		if n.object_index = FloorExplo
		{
			o = 8;
		}
		x = n.x + o;
		y = n.y + o;
		scrForcePosition60fps();
		mask_index = msk;
	}
}