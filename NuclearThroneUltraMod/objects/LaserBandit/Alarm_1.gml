alarm[1] = 8+random(10)

scrTarget()
if target > 0
{
if collision_line(x,y,target.x,target.y,Wall,0,0) < 0
{
	var dis = point_distance(target.x,target.y,x,y);
if dis > 24 && dis < 300
{
if random(3) < 1
{
//fire
alarm[2]=8
instance_create(x,y,Notice);
gunangle = point_direction(x,y,target.x,target.y)


alarm[1] = 9+random(5)}
else
{direction = point_direction(x,y,target.x,target.y)+random(180)-90
speed = 0.4
walk = 10+random(10)
gunangle = point_direction(x,y,target.x,target.y)}

}
else
{
direction = point_direction(target.x,target.y,x,y)+180+random(20)-10
speed = 0.6
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
walk = 5+random(10)
alarm[1] = walk+random(5)
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
alarm[1] = walk+10+random(30)
gunangle = direction
if hspeed > 0
right = 1
else if hspeed < 0
right = -1
}

