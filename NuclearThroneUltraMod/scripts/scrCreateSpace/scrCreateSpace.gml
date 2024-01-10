///xxxxxx();
// /@description
///@param
function scrCreateSpace(ar){
	var n = instance_nearest(x,y,Floor)
	if n == noone || n.object_index == FloorExplo
	{
		instance_create(x,y,BigWallBreak);
		return;
	}
	var xx = n.x;
	var yy = n.y;
	with instance_create(xx,yy,WallReplaceFloorAbsolutePosition)
	{
		area = ar;
	}
	with instance_create(xx-32,yy,WallReplaceFloorAbsolutePosition)
	{
		area = ar;
	}
	with instance_create(xx+32,yy,WallReplaceFloorAbsolutePosition)
	{
		area = ar;
	}
	with instance_create(xx,yy-32,WallReplaceFloorAbsolutePosition)
	{
		area = ar;
	}
	with instance_create(xx,yy+32,WallReplaceFloorAbsolutePosition)
	{
		area = ar;
	}
	with instance_create(xx-32,yy+32,WallReplaceFloorAbsolutePosition)
	{
		area = ar;
	}
	with instance_create(xx+32,yy+32,WallReplaceFloorAbsolutePosition)
	{
		area = ar;
	}
	with instance_create(xx-32,yy-32,WallReplaceFloorAbsolutePosition)
	{
		area = ar;
	}
	with instance_create(xx+32,yy-32,WallReplaceFloorAbsolutePosition)
	{
		area = ar;
	}
}