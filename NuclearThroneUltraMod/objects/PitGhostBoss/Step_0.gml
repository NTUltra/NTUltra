event_inherited()
if goToTarget
{
	alarm[2] = 0;
	x = lerp(targetPreviousX,targetX,targetLerp);
	y = lerp(targetPreviousY,targetY,targetLerp);
	direction = point_direction(targetPreviousX,targetPreviousY,targetX,targetY);
	if UberCont.normalGameSpeed == 60
		targetLerp += 0.05;
	else
		targetLerp += 0.1;
	if targetLerp > 1
	{
		goToTarget = false;
		walk *= 0.5;
		speed *= 0.5;
		alarm[4] = 0;
		alarm[1] = max(alarm[1],actTime*2);
		event_user(1);
		move_outside_solid(direction,16);
	}
}
else
{
	if walk > 0
	{
		walk -= 1
		motion_add(direction,acc)
	}
	if instance_exists(ThePit) && point_distance(x,y,ThePit.x,ThePit.y) > 400
	{
		motion_add(point_direction(x,y,ThePit.x,ThePit.y),acc*2);
		walk = max(walk,2);
	}
	if sprite_index == spr_hurt && speed > maxSpeed * 0.5
		speed = maxSpeed * 0.5;
	else if speed > maxSpeed
		speed = maxSpeed

	//TP through wall
	if mask_index == mskPickupThroughWall
	{
		mask_index = mskBandit;
		if place_meeting(x,y,WallHitMe)
		{
			var n = instance_nearest(x + lengthdir_x(128,direction), y + lengthdir_y(128,direction),Floor);
			if n != noone && n != instance_place(x,y,Floor)
			{
				var o = 16;
				if n.object_index == FloorExplo
					o = 8;
				targetPreviousX = x;
				targetPreviousY = y;
				targetX = n.x + o;
				targetY = n.y + o;
				targetLerp = 0;
				goToTarget = true;
				snd_play(sndGhostTeleport1,0.1,false,true,3,false,false,0.6,false,id,0,70,30,250);
				alarm[1] = max(alarm[1],actTime*2);
				alarm[4] = 2;
			}
			else
			{
				move_bounce_solid(false);
				move_outside_solid(direction,16);
			}
		}
		mask_index = mskPickupThroughWall;
	}
}