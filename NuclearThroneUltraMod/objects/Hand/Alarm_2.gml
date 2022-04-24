/// @description En terug
if !instance_exists(creator)
{
	instance_destroy();
	exit;
}
sprite_index = sprHandClose;
x = lerp(creator.x,touchpointX,lerpTime);
y = lerp(creator.y,touchpointY,lerpTime);
image_angle = point_direction(creator.x,creator.y,touchpointX,touchpointY);

if touchpointX > x
	image_xscale = -1
else
	image_xscale = 1;
if target > 0 && instance_exists(target)
{
	with target
	{
		if other.push
		{
			speed = other.pushSpeed/max(1,(size*0.5));
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
		else
		{
			x = other.x;
			y = other.y;
		}
		if my_health <= 0
		{
			other.target = -1;	
		}
	}
}
else
{
	lerpCalcBack = lerpCalc;	
}
lerpTime -= lerpCalcBack;
alarm[2] = 1;
if lerpTime < 0 || lerpTime > 1
{
	instance_destroy();	
}
