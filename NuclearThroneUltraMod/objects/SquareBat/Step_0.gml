event_inherited()

if circleMode {
	if target != noone && instance_exists(target)
	{
		var lerpp = lp;
		
		var rt = rotationSpeed;
		if (UberCont.normalGameSpeed == 60)
		{
			rt *= 0.5;
		}
		var currentAngle = point_direction(target.x,target.y,x,y);
		if abs(angle_difference(angle,currentAngle)) > 30
			angle = currentAngle;
		x += clamp(((target.x + lengthdir_x(circleDistance,angle))-x)*lerpp,-maxSpeed,maxSpeed);
		y += clamp(((target.y + lengthdir_y(circleDistance,angle))-y)*lerpp,-maxSpeed,maxSpeed);
		angle += rt; 
		if !collision_point(x,y,Floor,false,false)
			angle += rt * 0.5;
		if target.x < x
			right = -1
		else if target.x > x
			right = 1
	}
	else
	{
		circleMode = false;	
	}
}
else
{
	
	if walk > 0
	{
		walk -= 1
		motion_add(direction,0.8)
		if target != noone && instance_exists(target)
		{
			motion_add(point_direction(x,y,target.x,target.y),0.5);
		}
	}
	
	if instance_exists(Floor) && !collision_point(x,y,Floor,false,false) || place_meeting(x,y,Wall)
	{
		var nearest = instance_nearest(x,y,Floor);
		var nx = nearest.x + 16;
		var ny = nearest.y + 16;
		if nearest.object_index == FloorExplo
		{
			nx = nearest.x + 8;
			ny = nearest.y + 8;
		}
		var dir = point_direction(x,y,nx,ny);
		motion_add(dir,0.8);
	}
}
if place_meeting(x,y,Wall)
{
	mask_index = mskSquareBatBig;	
}
else
{
	mask_index = mskSquareBat;	
}
if speed > maxSpeed && my_health > 0
	speed = maxSpeed
