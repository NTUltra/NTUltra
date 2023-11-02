/// @description Teleport
if ammo > 0
{
	walk = 0;
	speed = 0;
	sprite_index = spr_idle;
	if target != noone && instance_exists(target)
	{
		alarm[3] = 5;
		alarm[1] += 10;
		mask_index = mskPickupThroughWall;
		var xxx = target.x + lengthdir_x(distance,angle);
		var yyy = target.y + lengthdir_y(distance,angle);
		with instance_create_depth(x,y,depth-1,CourtyardGuardianTeleport)
		{
			xx = xxx;
			yy = yyy;
		}
		x = xxx;
		y = yyy;
		if target.x < x
			right = -1
	    else if target.x > x
			right = 1
		angle += angleStep;
		if angle > 360
			angle -= 360;
		mask_index = mskCourtyardGuardian;
		scrForcePosition60fps();
	}
}
else
{
	walk = 0;
	speed = 0;
	alarm[4] = actTime;
	sprite_index = spr_idle;
	alarm[1] = actTime*3.5;
	mask_index = mskPickupThroughWall;
	with instance_create_depth(x,y,depth-1,CourtyardGuardianTeleport)
	{
		xx = other.originX;
		yy = other.originX;
	}
	x = originX;
	y = originY;
	if target != noone && instance_exists(target)
	{
		if target.x < x
			right = -1
		else if target.x > x
			right = 1
	}
	scrForcePosition60fps();
	mask_index = mskCourtyardGuardian;
}
ammo --;