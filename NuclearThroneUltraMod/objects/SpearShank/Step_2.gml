/// @description Keep the pieces together
with myEnd
{
	x = other.x;
	y = other.y;
	image_angle = other.image_angle;
	direction = other.direction;
	if array_length(hitEntities) > array_length(other.hitEntities)
	{
		other.hitEntities = hitEntities;	
	}
	else
	{
		hitEntities = other.hitEntities;
	}
}
if myStart != noone && instance_exists(myStart)
{
	var l = image_xscale * 4;
	with myStart
	{
		image_angle = other.image_angle;
		direction = other.direction;
		x = other.x + lengthdir_x(l,image_angle+180);
		y = other.y + lengthdir_y(l,image_angle+180);
		if array_length(hitEntities) > array_length(other.hitEntities)
		{
			other.hitEntities = hitEntities;	
		}
		else
		{
			hitEntities = other.hitEntities;
		}
	}
}