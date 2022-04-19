/// @description En terug
if !instance_exists(creator)
{
	instance_destroy();
	exit;
}
debug("back: ",lerpTime);
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
		x = other.x;
		y = other.y;
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
