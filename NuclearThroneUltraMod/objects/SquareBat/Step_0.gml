event_inherited()

if circleMode {
	
	if target != noone && instance_exists(target)
	{
		var lerpp = lp;
		x += clamp(((target.x + lengthdir_x(circleDistance,angle))-x)*lerpp,-maxSpeed,maxSpeed);
		y += clamp(((target.y + lengthdir_y(circleDistance,angle))-y)*lerpp,-maxSpeed,maxSpeed);
		angle += rotationSpeed; 
		if target.x < x
			right = -1
		else if target.x > x
			right = 1
		if (UberCont.normalGameSpeed == 60)
		{
			hspeed *= 2;
			vspeed *= 2;
			angle -= rotationSpeed*0.5;
		}
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
if speed > maxSpeed && my_health > 0
	speed = maxSpeed
