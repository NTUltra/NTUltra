///AI
if instance_exists(Player)
{
	alarm[1] = 4;

	scrTarget()
	if target != noone
	{
		if collision_line(x,y,target.x,target.y,Wall,0,0) < 0
		{
			if hidden
			{
				if (point_distance(target.x,target.y,x,y) < 200)
				{
					image_speed = 0.4;
				}
			}
			else if alarm[2] < 1 && point_distance(target.x,target.y,x,y) < 250
			{
				if random(4) < 1 || Player.loops > 1
				{
					gunangle = point_direction(x,y,target.x,target.y)
					ammo = maxAmmo;
					if (instance_exists(Player) && Player.loops > 0)
					{
						alarm[2] = 10;
					}
					else
					{
						alarm[2] = 20;
					}
					alarm[1] += alarm[2];
				}
			}
		}
	}
}
else
{
	alarm[1] = 28;
}