/// @description He smarter
alarm[1] = actTime+random(actTime);
if random(10) < 1
{
	motion_add(random(360),0.4)
	walk = actTime+random(actTime)
	alarm[1] = walk;
	//gunangle = direction
	if hspeed > 0
		right = 1
	else if hspeed < 0
		right = -1
}
else if instance_exists(enemy)
{
	var n = instance_nearest(x,y,enemy);
	if n.team != 2 && point_distance(x,y,n.x,n.y) < 400
	{
		var d = point_direction(x,y,n.x,n.y);
		if !collision_line(x,y,n.x,n.y,WallHitMe,false,false)
		{
			motion_add(d,2);
			walk = alarm[1];
		}
		else
		{
			mp_potential_step(n.x,n.y,maxSpeedNormal,false);
			alarm[5] = 1;
			motion_add(d,0.2);
			walk = 2;
		}
		if n.x > x
			right = 1
		else if n.x < x
			right = -1
	}
}
willExplode = alarm[1] - 2;