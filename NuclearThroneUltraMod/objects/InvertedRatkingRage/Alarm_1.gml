alarm[1] = 10+random(10)
scrTarget()
if target > 0
{
if point_distance(x,y,target.x,target.y) < 90
{
//charge
walk = 40+random(10)

mydir = point_direction(x,y,target.x,target.y)+random(20)-10
meleedamage = 4
speed = 0.6

if target.x < x
right = -1
else if target.x > x
right = 1
}
}

