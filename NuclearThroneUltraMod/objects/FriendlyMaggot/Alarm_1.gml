scrTarget()
if instance_exists(enemy)
{
	var n = instance_nearest(x,y,enemy);
	if n != noone && n.team != team
	{
		target = n;	
	}
}
alarm[1] = actTime+random(actTime)


if target != noone
{
if collision_line(x,y,target.x,target.y,Wall,0,0) < 0
direction = point_direction(x,y,target.x,target.y)+random(20)-10
else
motion_add(random(360),0.5)
}
else 
motion_add(random(360),0.5)

