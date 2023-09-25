alarm[1] = 10+random(10)

scrTarget()
if target != noone
{
if collision_line(x,y,target.x,target.y,Wall,0,0) < 0
{
if point_distance(target.x,target.y,x,y) > 96
{
if random(4) < 1
{
gunangle = point_direction(x,y,target.xprevious,target.yprevious)
wkick = 4
//Fire
alarm[2] = 5;
alarm[1] = 30+random(10)}
else
{direction = point_direction(x,y,target.x,target.y)+180+((45+random(90))*choose(1,-1))
speed = 0.4
walk = 10+random(10)
gunangle = point_direction(x,y,target.x,target.y)}

}
else
{
direction = point_direction(target.x,target.y,x,y)+random(20)-10
speed = 0.4
walk = 20+random(10)
gunangle = point_direction(x,y,target.x,target.y)
}

if target.x < x
right = -1
else if target.x > x
right = 1
}
else if random(4) < 1
{
motion_add(random(360),0.4)
walk = 20+random(10)
alarm[1] = walk+5
gunangle = direction
if hspeed > 0
right = 1
else if hspeed < 0
right = -1
}
}
else if random(10) < 1
{
motion_add(random(360),0.4)
walk = 20+random(10)
alarm[1] = walk+5
gunangle = direction
if hspeed > 0
right = 1
else if hspeed < 0
right = -1
}

