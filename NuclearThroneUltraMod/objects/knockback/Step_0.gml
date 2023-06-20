/// @description Move the shithead through walls and everything
lerpTime -= lerpCalcBack;
if target > 0 && instance_exists(target)
{
	with target
	{
		speed = other.pushSpeed/max(1,(mySize*0.5));
		direction = other.pushDirection;
		var msk = mask_index;
		mask_index = mskPickupThroughWall;
		x = lerp(other.pushX,other.pushStartX,other.lerpTime);
		y = lerp(other.pushY,other.pushStartY,other.lerpTime);
		mask_index = msk;
		var walls = ds_list_create();
		var al = instance_place_list(x,y,Wall,walls,false)
		for (var j = 0; j < al; j++) {
			with walls[| j]
			{
				instance_destroy(id,false);
				instance_create(x,y,FloorExplo);
			}
		}
		ds_list_destroy(walls);
		instance_create(x+hspeed,y+vspeed,WallBreak);
	}
}
else
{
	instance_destroy();	
}
if lerpTime < 0 || lerpTime > 1
{
	instance_destroy();	
}