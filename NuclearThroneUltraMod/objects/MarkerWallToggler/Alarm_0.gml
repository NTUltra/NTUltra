/// @description Wowie
var al = ds_list_size(myWalls);
for (var i = 0; i < al; i++)
{
	with myWalls[| i]
	{
		mask_index = mskPickupThroughWall;
		if object_index == WallHitMe
		{
			instance_create(x,y,Wall);
		}
		else
		{
			instance_create(x,y,WallHitMe);
		}
		instance_destroy();
	}
	with WallWireFrame
	{
		instance_destroy();	
	}
}
instance_destroy();