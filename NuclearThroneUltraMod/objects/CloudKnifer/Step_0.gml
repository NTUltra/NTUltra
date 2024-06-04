event_inherited()

if animationState == 1
{
	sprite_index = spr_chrg;
}
if stalking
{
	if image_alpha < targetAlpha + 0.1
		motion_add(point_direction(x,y,tx,ty),acc);
	else if place_meeting(x,y,Floor)
	{
		var n = instance_nearest(x,y,Floor)
		if n != noone
		{
			var o = 16;
			if n.object_index == FloorExplo
				o = 8;
			motion_add(point_direction(n.x+o,n.y+o,x,y),acc*2);
		}
	}
	else
	{
		if UberCont.normalGameSpeed == 60
			image_alpha = lerp(image_alpha,targetAlpha,0.1);
		else
			image_alpha = lerp(image_alpha,targetAlpha,0.2);
	}
}
else
{
	if UberCont.normalGameSpeed == 60
		image_alpha = lerp(image_alpha,targetAlpha,0.05);
	else
		image_alpha = lerp(image_alpha,targetAlpha,0.1);
	if walk > 0
	{
		walk -= 1
		var n = instance_nearest(x,y,Floor)
		if n != noone
		{
			var o = 16;
			if n.object_index == FloorExplo
				o = 8;
			if point_distance(x,y,n.x + o,n.y + o) > 48
			{
				direction = point_direction(x,y,n.x + o,n.y + o);
			}
		}
		motion_add(direction,acc)
	}
	var n = instance_nearest(x,y,Floor)
	var o = 16;
	if n != noone
	{
		if n.object_index == FloorExplo
			o = 8;
		if point_distance(x,y,n.x+o,n.y+o) > 64
		{
		
			motion_add(point_direction(n.x+o,n.y+o,x,y),acc * 1.5);
		}
	}
}
if image_alpha < stealthAlpha + 0.1
{
	mask_index = mskPickupThroughWall;
	depth = deep;
}
else 
{
	depth = -1;	
}
if image_alpha > 0.9
{
	mask_index = mskCloudKnifer;
}
if speed > maxSpeed
	speed = maxSpeed

if alarm[2] > 0
{
	vspeed = maxSpeed - 1.4;
	hspeed = 0;
	if alarm[2] < 5
		vspeed = 0;
}