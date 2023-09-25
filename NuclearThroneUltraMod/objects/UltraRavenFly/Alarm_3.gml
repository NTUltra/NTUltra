alarm[3] = 5+random(5)
scrTarget()
if target != noone
{
	if collision_line(x,y,target.x,target.y,Wall,0,0) < 0 && point_distance(target.x,target.y,x,y) > 32
	{
		//FIRE
		alarm[4] = 1
		ammo = 3
		gunangle = point_direction(x,y + z,target.x,target.y);
		alarm[3] += 10;
	}

}

