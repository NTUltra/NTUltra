if instance_exists(Player)
{
	var dis = point_distance(x,y,Player.x,Player.y)
if dis > 70
{
	if dis > 280
	{
		x = Player.x;
		y = Player.y;
	}
	else
	{
		if speed > maxspeed+1
			speed = maxspeed+1
		mp_potential_step(targetx,targety,1,false)
	}
}
else if speed > maxspeed
speed = maxspeed
}else if speed > maxspeed
speed = maxspeed


friction = 0.2

if walk > 0
{
walk -= 1
motion_add(direction,1)
}

if speed > 0
sprite_index = spr_walk
else
sprite_index = spr_idle

