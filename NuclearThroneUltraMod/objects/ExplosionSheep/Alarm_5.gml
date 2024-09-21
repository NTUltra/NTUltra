/// @description Walk toward an enemy behind a wall
if alarm[1] > 2
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
			motion_add(d,0.2);
			willExplode -= 1;
			if willExplode < 0
				instance_destroy();
				
			with instance_create(x,y,Smoke)
			{
				speed += 1;
			}
			alarm[5] = 1;
		}
		if n.x > x
			right = 1
		else if n.x < x
			right = -1
	}
	
	walk = max(walk,1);
}