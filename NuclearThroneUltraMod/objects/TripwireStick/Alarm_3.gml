//Step optimized
if !doesNotMove && target != noone && instance_exists(target)
{
x = target.x
y = target.y
visible = target.visible
alarm[3] = 1;
}
else if !instance_exists(target)
{
	image_angle = fallAngle;
	
}