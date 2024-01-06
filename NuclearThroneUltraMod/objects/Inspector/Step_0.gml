event_inherited()

if walk > 0
{
walk -= 1
motion_add(direction,0.8)
}


scrRoguePopo();


if speed > 3
speed = 3

if instance_exists(Player)
{
if Player.speed > 0 or my_health < maxhealth
freeze += 1
if Player.can_shoot = 0
freeze += 3
}

if control = 1
{
	if team == 2
		scrRogueTarget();
	if target != noone && instance_exists(target)
	{
		var str = 1;
		if UberCont.normalGameSpeed == 60
			str *= 0.5;
		with target
		{
			if object_index != Player || !skill_got[2]
			{
				if point_distance(x,y,other.x,other.y) < 220
				{
					if place_free(x+lengthdir_x(str,point_direction(x,y,other.x,other.y)),y)
						x += lengthdir_x(str,point_direction(x,y,other.x,other.y))
					if place_free(x,y+lengthdir_y(str,point_direction(x,y,other.x,other.y)))
						y += lengthdir_y(str,point_direction(x,y,other.x,other.y))
				}
			}
		}
	}
}

