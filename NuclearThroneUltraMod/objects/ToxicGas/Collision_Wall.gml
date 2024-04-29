	move_bounce_solid(false)
	speed *= 0.5;
if (moodSwingable)
{
	instance_destroy();
	if isDoc
	{
		var n = instance_nearest(x,y,enemy)
		if n != noone && n.team != 2
		{
			var td = point_direction(x,y,n.x,n.y);
			if abs(angle_difference(direction,td)) < 12
			{
				direction = td;
			}
		}
	}
	with instance_create(x,y,ToxicConvertedBullet) {
		direction = other.direction;
		speed = 16;
		team = 2;
	}
}