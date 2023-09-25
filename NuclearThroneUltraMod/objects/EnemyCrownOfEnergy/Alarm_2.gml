/// @description AI
alarm[2] = 10+random(10)
if !instance_exists(creator)
	exit;
if point_distance(x,y,targetx,targety) > 24+random(48) and random(5) < 4
{
motion_add(point_direction(x,y,targetx,targety)+random(90)-45,2)
alarm[2] *= 0.5
walk = 10+random(20)
}
else if point_distance(x,y,targetx,targety) < 24 and random(5) < 4
{
motion_add(point_direction(x,y,targetx,targety)+180+random(90)-45,2)
walk = 5+random(20)
}
else if random(2) < 1
{
motion_add(random(360),2)
walk = 5+random(10)
}
if creator.target != noone && instance_exists(creator.target)
{
	var dir = creator.target;
	if speed > 0
	{
		if distance_to_object(dir) < 48
		{
			motion_add(point_direction(dir.x,dir.y,x,y),2)
		}
	}
	if dir.team != team && point_distance(x,y,creator.target.x,creator.target.y) < 250 && !collision_line(x,y,dir.x,dir.y,Wall,false,false)
	{
		gunangle = point_direction(x,y,dir.x,dir.y);
		instance_create(x,y,Notice);
		alarm[3] = 10;
		walk = 0;
		speed *= 0.5;
		alarm[2] += 20;
		if dir.x < x
			wepright = -1
		else if dir.x > x
			wepright = 1
	}
}