if !instance_exists(creator)
{
	instance_destroy();
	exit;
}
alarm[0] = 20+random(20)

if point_distance(x,y,targetx,targety) > 24+random(48) and random(5) < 4
{
motion_add(point_direction(x,y,targetx,targety)+random(90)-45,2)
alarm[0] *= 0.5;
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

if speed > 0 && creator.target != noone && instance_exists(creator.target) && instance_exists(creator.target)
{
if distance_to_object(creator.target) < 48
{
var dir = instance_nearest(x,y,creator.target)
if dir != noone
motion_add(point_direction(dir.x,dir.y,x,y),2)
}
motion_add(point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y),1)
if instance_exists(Player)
motion_add(Player.direction,1)
}

