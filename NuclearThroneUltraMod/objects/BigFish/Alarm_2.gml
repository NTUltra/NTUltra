//when this is on suck player

if (target == -1 || !instance_exists(target))
	exit;
direction = point_direction(x,y,target.x,target.y);
alarm[1] += actTime;
walk += actTime;