alarm[1] = actTime+random(actTime)


scrTarget()
if target > 0
{
	if collision_line(x,y,target.x,target.y,Wall,0,0) < 0
	{
		if point_distance(target.x,target.y,x,y) > 32
		{
			gunangle = point_direction(x,y,target.x,target.y);
			sprite_index = spr_fire
			ammo = maxAmmo;
			alarm[1] = tellTime + (actTime * 4) + (maxAmmo*2);
			alarm[2] = tellTime;

		}
		if target.x < x
			right = -1
		else if target.x > x
			right = 1
	}
}