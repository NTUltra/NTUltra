/// @description Bubbles and accelerate
alarm[2] = 1;
with instance_create(x,y,Dust)
{
	depth = other.depth + 1;
	sprite_index = sprBubble;
	motion_add(other.direction,1);
}
if active = 1
{
	var n = instance_nearest(x + (hspeed*2),y + (vspeed * 2),enemy)
	if speed > 4 && n != noone && n.team != team && point_distance(x,y,n.x,n.y) < 300 && !collision_line(x,y,n.x,n.y,Wall,false,false)
	{
		motion_add(point_direction(x,y,n.x,n.y),acc);
		speed = min(speed,maxSpeed);
	}
	else 
	{
		if speed < maxSpeed
		{
			speed += acc;
		}
		else
		{
			speed = maxSpeed;
		}
	}
}