alarm[1] = 8+random(5)

if !instance_exists(target)
target = -1
if target = -1
{
if instance_exists(enemy)
target = instance_nearest(x,y,enemy)
}

if target != noone
{

//GOT A TARGET
if collision_line(x,y,target.x,target.y,Wall,0,0) < 0 and point_distance(x,y,target.x,target.y) < 120
{

//if random(6) < 5
//{
//FIRE
goForIt=true;

//}
/*
else
{
//DONT FIRE
direction = point_direction(x,y,target.x,target.y)+random(180)-90
speed = 0.5

if instance_exists(Player) and random(4) < 3
{
motion_add(point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y),0.8)
motion_add(point_direction(x,y,Player.x,Player.y),1)
}

walk = 10+random(10)
}*/
}
else if random(4) < 3
{
//CANT SEE TARGET
motion_add(random(360),0.4)
if instance_exists(Player)
{
motion_add(point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y),0.8)
motion_add(point_direction(x,y,Player.x,Player.y),1)
}
walk = 10+random(10)
alarm[1] = walk+2
}
}
else if random(10) < 1
{
//GOT NO TARGET
motion_add(random(360),0.4)
walk = 20+random(10)
alarm[1] = walk+5
gunangle = direction
if hspeed > 0
right = 1
else if hspeed < 0
right = -1
}

/* */
/*  */
