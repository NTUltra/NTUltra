/// @description Teleport
if ammo > 0
{
	walk = 0;
	speed = 0;
	sprite_index = spr_idle;
	if target != noone && instance_exists(target)
	{
		alarm[7] = 4;
		alarm[1] += 10;
		mask_index = mskPickupThroughWall;
		var xxx = target.x + lengthdir_x(distance,gunangle);
		var yyy = target.y + lengthdir_y(distance,gunangle);
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
		gunangle += angleStep;
		if gunangle > 360
			gunangle -= 360;
		mask_index = mskCrownGluttonBoss;
		scrForcePosition60fps();
	}
}
else
{
	walk = 0;
	speed = 0;
	sprite_index = spr_idle;
	alarm[1] = actTime*2.5;
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
	mask_index = mskCrownGluttonBoss;
}
ammo --;